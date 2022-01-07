
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int partnatts; int * partcollation; int * partopcintype; int * partopfamily; } ;
struct TYPE_6__ {int relids; int * partexprs; int nparts; int boundinfo; TYPE_2__* part_scheme; } ;
typedef int ScanDirection ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int PathKey ;
typedef TYPE_2__* PartitionScheme ;
typedef int List ;
typedef int Expr ;


 int Assert (int ) ;
 int IS_SIMPLE_REL (TYPE_1__*) ;
 int * NIL ;
 int ScanDirectionIsBackward (int ) ;
 int * lappend (int *,int *) ;
 scalar_t__ linitial (int ) ;
 int * make_pathkey_from_sortinfo (int *,int *,int *,int ,int ,int ,int ,int ,int ,int ,int) ;
 int partitions_are_ordered (int ,int ) ;
 int partkey_is_bool_constant_for_query (TYPE_1__*,int) ;
 int pathkey_is_redundant (int *,int *) ;

List *
build_partition_pathkeys(PlannerInfo *root, RelOptInfo *partrel,
       ScanDirection scandir, bool *partialkeys)
{
 List *retval = NIL;
 PartitionScheme partscheme = partrel->part_scheme;
 int i;

 Assert(partscheme != ((void*)0));
 Assert(partitions_are_ordered(partrel->boundinfo, partrel->nparts));

 Assert(IS_SIMPLE_REL(partrel));

 for (i = 0; i < partscheme->partnatts; i++)
 {
  PathKey *cpathkey;
  Expr *keyCol = (Expr *) linitial(partrel->partexprs[i]);
  cpathkey = make_pathkey_from_sortinfo(root,
             keyCol,
             ((void*)0),
             partscheme->partopfamily[i],
             partscheme->partopcintype[i],
             partscheme->partcollation[i],
             ScanDirectionIsBackward(scandir),
             ScanDirectionIsBackward(scandir),
             0,
             partrel->relids,
             0);


  if (cpathkey)
  {




   if (!pathkey_is_redundant(cpathkey, retval))
    retval = lappend(retval, cpathkey);
  }
  else
  {
   if (!partkey_is_bool_constant_for_query(partrel, i))
   {
    *partialkeys = 1;
    return retval;
   }
  }
 }

 *partialkeys = 0;
 return retval;
}
