
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_25__ {int consider_partitionwise_join; int nparts; scalar_t__ reloptkind; int relids; struct TYPE_25__** part_rels; int boundinfo; TYPE_1__* part_scheme; } ;
struct TYPE_24__ {int jointype; } ;
struct TYPE_23__ {int parttypbyval; int parttyplen; int partnatts; } ;
typedef TYPE_2__ SpecialJoinInfo ;
typedef int Relids ;
typedef TYPE_3__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Node ;
typedef int List ;
typedef int AppendRelInfo ;


 int Assert (int) ;
 int ERROR ;
 int IS_DUMMY_REL (TYPE_3__*) ;
 scalar_t__ IS_PARTITIONED_REL (TYPE_3__*) ;
 int IS_SIMPLE_REL (TYPE_3__*) ;





 scalar_t__ RELOPT_OTHER_MEMBER_REL ;
 scalar_t__ REL_HAS_ALL_PART_PROPS (TYPE_3__*) ;
 scalar_t__ adjust_appendrel_attrs (int *,int *,int,int **) ;
 int bms_equal (int ,int ) ;
 int bms_overlap (int ,int ) ;
 int bms_union (int ,int ) ;
 TYPE_3__* build_child_join_rel (int *,TYPE_3__*,TYPE_3__*,TYPE_3__*,int *,TYPE_2__*,int) ;
 TYPE_2__* build_child_join_sjinfo (int *,TYPE_2__*,int ,int ) ;
 int check_stack_depth () ;
 int elog (int ,char*,int) ;
 int ** find_appinfos_by_relids (int *,int ,int*) ;
 int partition_bounds_equal (int ,int ,int ,int ,int ) ;
 int pfree (int **) ;
 int populate_joinrel_with_paths (int *,TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_2__*,int *) ;

__attribute__((used)) static void
try_partitionwise_join(PlannerInfo *root, RelOptInfo *rel1, RelOptInfo *rel2,
        RelOptInfo *joinrel, SpecialJoinInfo *parent_sjinfo,
        List *parent_restrictlist)
{
 bool rel1_is_simple = IS_SIMPLE_REL(rel1);
 bool rel2_is_simple = IS_SIMPLE_REL(rel2);
 int nparts;
 int cnt_parts;


 check_stack_depth();


 if (!IS_PARTITIONED_REL(joinrel))
  return;


 Assert(joinrel->consider_partitionwise_join);






 Assert(IS_PARTITIONED_REL(rel1) && IS_PARTITIONED_REL(rel2));
 Assert(REL_HAS_ALL_PART_PROPS(rel1) && REL_HAS_ALL_PART_PROPS(rel2));


 Assert(rel1->consider_partitionwise_join &&
     rel2->consider_partitionwise_join);





 Assert(joinrel->part_scheme == rel1->part_scheme &&
     joinrel->part_scheme == rel2->part_scheme);






 Assert(partition_bounds_equal(joinrel->part_scheme->partnatts,
          joinrel->part_scheme->parttyplen,
          joinrel->part_scheme->parttypbyval,
          joinrel->boundinfo, rel1->boundinfo));
 Assert(partition_bounds_equal(joinrel->part_scheme->partnatts,
          joinrel->part_scheme->parttyplen,
          joinrel->part_scheme->parttypbyval,
          joinrel->boundinfo, rel2->boundinfo));

 nparts = joinrel->nparts;






 for (cnt_parts = 0; cnt_parts < nparts; cnt_parts++)
 {
  RelOptInfo *child_rel1 = rel1->part_rels[cnt_parts];
  RelOptInfo *child_rel2 = rel2->part_rels[cnt_parts];
  bool rel1_empty = (child_rel1 == ((void*)0) ||
          IS_DUMMY_REL(child_rel1));
  bool rel2_empty = (child_rel2 == ((void*)0) ||
          IS_DUMMY_REL(child_rel2));
  SpecialJoinInfo *child_sjinfo;
  List *child_restrictlist;
  RelOptInfo *child_joinrel;
  Relids child_joinrelids;
  AppendRelInfo **appinfos;
  int nappinfos;
  switch (parent_sjinfo->jointype)
  {
   case 130:
   case 128:
    if (rel1_empty || rel2_empty)
     continue;
    break;
   case 129:
   case 132:
    if (rel1_empty)
     continue;
    break;
   case 131:
    if (rel1_empty && rel2_empty)
     continue;
    break;
   default:

    elog(ERROR, "unrecognized join type: %d",
      (int) parent_sjinfo->jointype);
    break;
  }






  if (child_rel1 == ((void*)0) || child_rel2 == ((void*)0))
  {




   joinrel->nparts = 0;
   return;
  }







  if (rel1_is_simple && !child_rel1->consider_partitionwise_join)
  {
   Assert(child_rel1->reloptkind == RELOPT_OTHER_MEMBER_REL);
   Assert(IS_DUMMY_REL(child_rel1));
   joinrel->nparts = 0;
   return;
  }
  if (rel2_is_simple && !child_rel2->consider_partitionwise_join)
  {
   Assert(child_rel2->reloptkind == RELOPT_OTHER_MEMBER_REL);
   Assert(IS_DUMMY_REL(child_rel2));
   joinrel->nparts = 0;
   return;
  }


  Assert(!bms_overlap(child_rel1->relids, child_rel2->relids));
  child_joinrelids = bms_union(child_rel1->relids, child_rel2->relids);
  appinfos = find_appinfos_by_relids(root, child_joinrelids, &nappinfos);





  child_sjinfo = build_child_join_sjinfo(root, parent_sjinfo,
              child_rel1->relids,
              child_rel2->relids);





  child_restrictlist =
   (List *) adjust_appendrel_attrs(root,
           (Node *) parent_restrictlist,
           nappinfos, appinfos);
  pfree(appinfos);

  child_joinrel = joinrel->part_rels[cnt_parts];
  if (!child_joinrel)
  {
   child_joinrel = build_child_join_rel(root, child_rel1, child_rel2,
             joinrel, child_restrictlist,
             child_sjinfo,
             child_sjinfo->jointype);
   joinrel->part_rels[cnt_parts] = child_joinrel;
  }

  Assert(bms_equal(child_joinrel->relids, child_joinrelids));

  populate_joinrel_with_paths(root, child_rel1, child_rel2,
         child_joinrel, child_sjinfo,
         child_restrictlist);
 }
}
