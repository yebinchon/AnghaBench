
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int simple_rel_array_size; TYPE_1__** simple_rel_array; } ;
struct TYPE_5__ {int relid; double rows; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;


 int Assert (int) ;
 scalar_t__ IS_DUMMY_REL (TYPE_1__*) ;
 int bms_next_member (int ,int) ;

__attribute__((used)) static double
approximate_joinrel_size(PlannerInfo *root, Relids relids)
{
 double rowcount = 1.0;
 int relid;

 relid = -1;
 while ((relid = bms_next_member(relids, relid)) >= 0)
 {
  RelOptInfo *rel;


  if (relid >= root->simple_rel_array_size)
   continue;
  rel = root->simple_rel_array[relid];
  if (rel == ((void*)0))
   continue;
  Assert(rel->relid == relid);


  if (IS_DUMMY_REL(rel))
   continue;


  Assert(rel->rows > 0);


  rowcount *= rel->rows;
 }
 return rowcount;
}
