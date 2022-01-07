
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int natts; } ;
struct TYPE_11__ {scalar_t__ attlen; } ;
struct TYPE_10__ {int freespace; int bufferingMode; int gfbb; scalar_t__ indtuples; scalar_t__ indtuplesSize; TYPE_1__* indexrel; } ;
struct TYPE_9__ {TYPE_8__* rd_att; } ;
typedef double Size ;
typedef TYPE_1__* Relation ;
typedef int ItemIdData ;
typedef int IndexTupleData ;
typedef int GISTPageOpaqueData ;
typedef TYPE_2__ GISTBuildState ;


 double BLCKSZ ;
 int DEBUG1 ;
 int GIST_BUFFERING_ACTIVE ;
 int GIST_BUFFERING_DISABLED ;
 scalar_t__ MAXALIGN (int) ;
 int SizeOfPageHeaderData ;
 TYPE_7__* TupleDescAttr (TYPE_8__*,int) ;
 scalar_t__ VARHDRSZ ;
 int calculatePagesPerBuffer (TYPE_2__*,int) ;
 int effective_cache_size ;
 int elog (int ,char*,...) ;
 int gistGetMaxLevel (TYPE_1__*) ;
 int gistInitBuildBuffers (int,int,int ) ;
 int gistInitParentMap (TYPE_2__*) ;
 scalar_t__ maintenance_work_mem ;
 int pow (double,double) ;

__attribute__((used)) static void
gistInitBuffering(GISTBuildState *buildstate)
{
 Relation index = buildstate->indexrel;
 int pagesPerBuffer;
 Size pageFreeSpace;
 Size itupAvgSize,
    itupMinSize;
 double avgIndexTuplesPerPage,
    maxIndexTuplesPerPage;
 int i;
 int levelStep;


 pageFreeSpace = BLCKSZ - SizeOfPageHeaderData - sizeof(GISTPageOpaqueData)
  - sizeof(ItemIdData)
  - buildstate->freespace;





 itupAvgSize = (double) buildstate->indtuplesSize /
  (double) buildstate->indtuples;
 itupMinSize = (Size) MAXALIGN(sizeof(IndexTupleData));
 for (i = 0; i < index->rd_att->natts; i++)
 {
  if (TupleDescAttr(index->rd_att, i)->attlen < 0)
   itupMinSize += VARHDRSZ;
  else
   itupMinSize += TupleDescAttr(index->rd_att, i)->attlen;
 }


 avgIndexTuplesPerPage = pageFreeSpace / itupAvgSize;
 maxIndexTuplesPerPage = pageFreeSpace / itupMinSize;
 levelStep = 1;
 for (;;)
 {
  double subtreesize;
  double maxlowestlevelpages;


  subtreesize =
   (1 - pow(avgIndexTuplesPerPage, (double) (levelStep + 1))) /
   (1 - avgIndexTuplesPerPage);


  maxlowestlevelpages = pow(maxIndexTuplesPerPage, (double) levelStep);


  if (subtreesize > effective_cache_size / 4)
   break;


  if (maxlowestlevelpages > ((double) maintenance_work_mem * 1024) / BLCKSZ)
   break;


  levelStep++;
 }





 levelStep--;





 if (levelStep <= 0)
 {
  elog(DEBUG1, "failed to switch to buffered GiST build");
  buildstate->bufferingMode = GIST_BUFFERING_DISABLED;
  return;
 }






 pagesPerBuffer = calculatePagesPerBuffer(buildstate, levelStep);


 buildstate->gfbb = gistInitBuildBuffers(pagesPerBuffer, levelStep,
           gistGetMaxLevel(index));

 gistInitParentMap(buildstate);

 buildstate->bufferingMode = GIST_BUFFERING_ACTIVE;

 elog(DEBUG1, "switched to buffered GiST build; level step = %d, pagesPerBuffer = %d",
   levelStep, pagesPerBuffer);
}
