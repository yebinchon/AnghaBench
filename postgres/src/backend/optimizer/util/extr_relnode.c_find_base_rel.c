
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int simple_rel_array_size; int ** simple_rel_array; } ;
typedef int RelOptInfo ;
typedef TYPE_1__ PlannerInfo ;


 int Assert (int) ;
 int ERROR ;
 int elog (int ,char*,int) ;

RelOptInfo *
find_base_rel(PlannerInfo *root, int relid)
{
 RelOptInfo *rel;

 Assert(relid > 0);

 if (relid < root->simple_rel_array_size)
 {
  rel = root->simple_rel_array[relid];
  if (rel)
   return rel;
 }

 elog(ERROR, "no relation entry for relid %d", relid);

 return ((void*)0);
}
