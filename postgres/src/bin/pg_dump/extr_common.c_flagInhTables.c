
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dump; } ;
struct TYPE_9__ {scalar_t__ relkind; int numParents; int interesting; struct TYPE_9__** parents; int ispartition; TYPE_1__ dobj; } ;
typedef TYPE_2__ TableInfo ;
struct TYPE_11__ {TYPE_3__* dopt; } ;
struct TYPE_10__ {int load_via_partition_root; } ;
typedef int InhInfo ;
typedef TYPE_3__ DumpOptions ;
typedef TYPE_4__ Archive ;


 scalar_t__ RELKIND_MATVIEW ;
 scalar_t__ RELKIND_SEQUENCE ;
 scalar_t__ RELKIND_VIEW ;
 int findParentsByOid (TYPE_2__*,int *,int) ;

__attribute__((used)) static void
flagInhTables(Archive *fout, TableInfo *tblinfo, int numTables,
     InhInfo *inhinfo, int numInherits)
{
 DumpOptions *dopt = fout->dopt;
 int i,
    j;

 for (i = 0; i < numTables; i++)
 {
  bool find_parents = 1;
  bool mark_parents = 1;


  if (tblinfo[i].relkind == RELKIND_SEQUENCE ||
   tblinfo[i].relkind == RELKIND_VIEW ||
   tblinfo[i].relkind == RELKIND_MATVIEW)
   continue;
  if (!tblinfo[i].dobj.dump)
  {
   mark_parents = 0;

   if (!dopt->load_via_partition_root ||
    !tblinfo[i].ispartition)
    find_parents = 0;
  }


  if (find_parents)
   findParentsByOid(&tblinfo[i], inhinfo, numInherits);





  if (mark_parents)
  {
   int numParents = tblinfo[i].numParents;
   TableInfo **parents = tblinfo[i].parents;

   for (j = 0; j < numParents; j++)
    parents[j]->interesting = 1;
  }
 }
}
