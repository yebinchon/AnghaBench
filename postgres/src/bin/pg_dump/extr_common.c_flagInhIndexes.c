
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {size_t dumpId; } ;
struct TYPE_20__ {int numParents; int numIndexes; TYPE_1__ dobj; TYPE_7__* indexes; struct TYPE_20__** parents; int ispartition; } ;
typedef TYPE_6__ TableInfo ;
struct TYPE_16__ {scalar_t__ oid; scalar_t__ tableoid; } ;
struct TYPE_23__ {int namespace; int name; TYPE_2__ catId; int objType; } ;
struct TYPE_22__ {TYPE_9__ dobj; TYPE_7__* partitionIdx; TYPE_7__* parentIdx; } ;
struct TYPE_17__ {int dumpId; int name; } ;
struct TYPE_21__ {int partattaches; TYPE_5__* indextable; TYPE_3__ dobj; int parentidx; } ;
struct TYPE_18__ {int dumpId; int namespace; } ;
struct TYPE_19__ {TYPE_4__ dobj; } ;
typedef TYPE_7__ IndxInfo ;
typedef TYPE_8__ IndexAttachInfo ;
typedef int **** DumpableObject ;
typedef int Archive ;


 int Assert (int) ;
 int AssignDumpId (TYPE_9__*) ;
 int DO_INDEX_ATTACH ;
 int addObjectDependency (TYPE_9__*,int ) ;
 int ******** buildIndexArray (TYPE_7__*,int,int) ;
 TYPE_7__* findIndexByOid (int ,int ******,int) ;
 int getMaxDumpId () ;
 int pg_free (int *******) ;
 scalar_t__ pg_malloc0 (int) ;
 int pg_strdup (int ) ;
 int simple_ptr_list_append (int *,TYPE_9__*) ;

__attribute__((used)) static void
flagInhIndexes(Archive *fout, TableInfo tblinfo[], int numTables)
{
 int i,
    j,
    k;
 DumpableObject ***parentIndexArray;

 parentIndexArray = (DumpableObject ***)
  pg_malloc0(getMaxDumpId() * sizeof(DumpableObject **));

 for (i = 0; i < numTables; i++)
 {
  TableInfo *parenttbl;
  IndexAttachInfo *attachinfo;

  if (!tblinfo[i].ispartition || tblinfo[i].numParents == 0)
   continue;

  Assert(tblinfo[i].numParents == 1);
  parenttbl = tblinfo[i].parents[0];
  if (parentIndexArray[parenttbl->dobj.dumpId] == ((void*)0))
   parentIndexArray[parenttbl->dobj.dumpId] =
    buildIndexArray(parenttbl->indexes,
        parenttbl->numIndexes,
        sizeof(IndxInfo));

  attachinfo = (IndexAttachInfo *)
   pg_malloc0(tblinfo[i].numIndexes * sizeof(IndexAttachInfo));
  for (j = 0, k = 0; j < tblinfo[i].numIndexes; j++)
  {
   IndxInfo *index = &(tblinfo[i].indexes[j]);
   IndxInfo *parentidx;

   if (index->parentidx == 0)
    continue;

   parentidx = findIndexByOid(index->parentidx,
            parentIndexArray[parenttbl->dobj.dumpId],
            parenttbl->numIndexes);
   if (parentidx == ((void*)0))
    continue;

   attachinfo[k].dobj.objType = DO_INDEX_ATTACH;
   attachinfo[k].dobj.catId.tableoid = 0;
   attachinfo[k].dobj.catId.oid = 0;
   AssignDumpId(&attachinfo[k].dobj);
   attachinfo[k].dobj.name = pg_strdup(index->dobj.name);
   attachinfo[k].dobj.namespace = index->indextable->dobj.namespace;
   attachinfo[k].parentIdx = parentidx;
   attachinfo[k].partitionIdx = index;
   addObjectDependency(&attachinfo[k].dobj, index->dobj.dumpId);
   addObjectDependency(&attachinfo[k].dobj, parentidx->dobj.dumpId);
   addObjectDependency(&attachinfo[k].dobj,
        index->indextable->dobj.dumpId);
   addObjectDependency(&attachinfo[k].dobj,
        parentidx->indextable->dobj.dumpId);


   simple_ptr_list_append(&parentidx->partattaches, &attachinfo[k].dobj);

   k++;
  }
 }

 for (i = 0; i < numTables; i++)
  if (parentIndexArray[i])
   pg_free(parentIndexArray[i]);
 pg_free(parentIndexArray);
}
