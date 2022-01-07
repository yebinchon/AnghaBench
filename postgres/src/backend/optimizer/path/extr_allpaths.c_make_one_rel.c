
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {size_t simple_rel_array_size; double total_table_pages; int * all_baserels; TYPE_1__** simple_rel_array; } ;
struct TYPE_12__ {size_t relid; scalar_t__ reloptkind; int relids; scalar_t__ pages; } ;
typedef TYPE_1__ RelOptInfo ;
typedef TYPE_2__ PlannerInfo ;
typedef int List ;
typedef size_t Index ;


 int Assert (int) ;
 scalar_t__ IS_DUMMY_REL (TYPE_1__*) ;
 scalar_t__ IS_SIMPLE_REL (TYPE_1__*) ;
 scalar_t__ RELOPT_BASEREL ;
 int * bms_add_member (int *,size_t) ;
 int bms_equal (int ,int *) ;
 TYPE_1__* make_rel_from_joinlist (TYPE_2__*,int *) ;
 int set_base_rel_consider_startup (TYPE_2__*) ;
 int set_base_rel_pathlists (TYPE_2__*) ;
 int set_base_rel_sizes (TYPE_2__*) ;

RelOptInfo *
make_one_rel(PlannerInfo *root, List *joinlist)
{
 RelOptInfo *rel;
 Index rti;
 double total_pages;




 root->all_baserels = ((void*)0);
 for (rti = 1; rti < root->simple_rel_array_size; rti++)
 {
  RelOptInfo *brel = root->simple_rel_array[rti];


  if (brel == ((void*)0))
   continue;

  Assert(brel->relid == rti);


  if (brel->reloptkind != RELOPT_BASEREL)
   continue;

  root->all_baserels = bms_add_member(root->all_baserels, brel->relid);
 }


 set_base_rel_consider_startup(root);




 set_base_rel_sizes(root);
 total_pages = 0;
 for (rti = 1; rti < root->simple_rel_array_size; rti++)
 {
  RelOptInfo *brel = root->simple_rel_array[rti];

  if (brel == ((void*)0))
   continue;

  Assert(brel->relid == rti);

  if (IS_DUMMY_REL(brel))
   continue;

  if (IS_SIMPLE_REL(brel))
   total_pages += (double) brel->pages;
 }
 root->total_table_pages = total_pages;




 set_base_rel_pathlists(root);




 rel = make_rel_from_joinlist(root, joinlist);




 Assert(bms_equal(rel->relids, root->all_baserels));

 return rel;
}
