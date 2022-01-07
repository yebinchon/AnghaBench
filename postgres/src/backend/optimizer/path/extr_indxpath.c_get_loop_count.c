
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int simple_rel_array_size; TYPE_1__** simple_rel_array; } ;
struct TYPE_6__ {int relid; scalar_t__ rows; } ;
typedef int * Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef int Index ;


 int Assert (int) ;
 scalar_t__ IS_DUMMY_REL (TYPE_1__*) ;
 double adjust_rowcount_for_semijoins (TYPE_2__*,int ,int,scalar_t__) ;
 int bms_next_member (int *,int) ;

__attribute__((used)) static double
get_loop_count(PlannerInfo *root, Index cur_relid, Relids outer_relids)
{
 double result;
 int outer_relid;


 if (outer_relids == ((void*)0))
  return 1.0;

 result = 0.0;
 outer_relid = -1;
 while ((outer_relid = bms_next_member(outer_relids, outer_relid)) >= 0)
 {
  RelOptInfo *outer_rel;
  double rowcount;


  if (outer_relid >= root->simple_rel_array_size)
   continue;
  outer_rel = root->simple_rel_array[outer_relid];
  if (outer_rel == ((void*)0))
   continue;
  Assert(outer_rel->relid == outer_relid);


  if (IS_DUMMY_REL(outer_rel))
   continue;


  Assert(outer_rel->rows > 0);


  rowcount = adjust_rowcount_for_semijoins(root,
             cur_relid,
             outer_relid,
             outer_rel->rows);


  if (result == 0.0 || result > rowcount)
   result = rowcount;
 }

 return (result > 0.0) ? result : 1.0;
}
