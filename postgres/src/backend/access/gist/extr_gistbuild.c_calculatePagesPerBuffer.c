
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int freespace; scalar_t__ indtuples; scalar_t__ indtuplesSize; } ;
typedef double Size ;
typedef int ItemIdData ;
typedef int GISTPageOpaqueData ;
typedef TYPE_1__ GISTBuildState ;


 int BLCKSZ ;
 int SizeOfPageHeaderData ;
 int pow (double,int) ;
 scalar_t__ rint (double) ;

__attribute__((used)) static int
calculatePagesPerBuffer(GISTBuildState *buildstate, int levelStep)
{
 double pagesPerBuffer;
 double avgIndexTuplesPerPage;
 double itupAvgSize;
 Size pageFreeSpace;


 pageFreeSpace = BLCKSZ - SizeOfPageHeaderData - sizeof(GISTPageOpaqueData)
  - sizeof(ItemIdData)
  - buildstate->freespace;





 itupAvgSize = (double) buildstate->indtuplesSize /
  (double) buildstate->indtuples;

 avgIndexTuplesPerPage = pageFreeSpace / itupAvgSize;




 pagesPerBuffer = 2 * pow(avgIndexTuplesPerPage, levelStep);

 return (int) rint(pagesPerBuffer);
}
