
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** simple_rel_array; int ec_merging_done; } ;
struct TYPE_4__ {int eclass_indexes; } ;
typedef int Relids ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef int Bitmapset ;


 int Assert (int ) ;
 int * bms_add_members (int *,int ) ;
 int bms_next_member (int ,int) ;

__attribute__((used)) static Bitmapset *
get_eclass_indexes_for_relids(PlannerInfo *root, Relids relids)
{
 Bitmapset *ec_indexes = ((void*)0);
 int i = -1;


 Assert(root->ec_merging_done);

 while ((i = bms_next_member(relids, i)) > 0)
 {
  RelOptInfo *rel = root->simple_rel_array[i];

  ec_indexes = bms_add_members(ec_indexes, rel->eclass_indexes);
 }
 return ec_indexes;
}
