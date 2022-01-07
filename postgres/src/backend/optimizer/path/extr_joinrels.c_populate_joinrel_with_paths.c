
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_21__ {int relids; int cheapest_total_path; int pathlist; } ;
struct TYPE_20__ {int jointype; int syn_righthand; int min_righthand; int min_lefthand; } ;
typedef TYPE_1__ SpecialJoinInfo ;
typedef TYPE_2__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int List ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;




 int const JOIN_RIGHT ;

 int const JOIN_UNIQUE_INNER ;
 int const JOIN_UNIQUE_OUTER ;
 int NIL ;
 int add_paths_to_joinrel (int *,TYPE_2__*,TYPE_2__*,TYPE_2__*,int const,TYPE_1__*,int *) ;
 int bms_equal (int ,int ) ;
 int bms_is_subset (int ,int ) ;
 int * create_unique_path (int *,TYPE_2__*,int ,TYPE_1__*) ;
 int elog (int ,char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int is_dummy_rel (TYPE_2__*) ;
 int mark_dummy_rel (TYPE_2__*) ;
 int restriction_is_constant_false (int *,TYPE_2__*,int) ;
 int try_partitionwise_join (int *,TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_1__*,int *) ;

__attribute__((used)) static void
populate_joinrel_with_paths(PlannerInfo *root, RelOptInfo *rel1,
       RelOptInfo *rel2, RelOptInfo *joinrel,
       SpecialJoinInfo *sjinfo, List *restrictlist)
{
 switch (sjinfo->jointype)
 {
  case 130:
   if (is_dummy_rel(rel1) || is_dummy_rel(rel2) ||
    restriction_is_constant_false(restrictlist, joinrel, 0))
   {
    mark_dummy_rel(joinrel);
    break;
   }
   add_paths_to_joinrel(root, joinrel, rel1, rel2,
         130, sjinfo,
         restrictlist);
   add_paths_to_joinrel(root, joinrel, rel2, rel1,
         130, sjinfo,
         restrictlist);
   break;
  case 129:
   if (is_dummy_rel(rel1) ||
    restriction_is_constant_false(restrictlist, joinrel, 1))
   {
    mark_dummy_rel(joinrel);
    break;
   }
   if (restriction_is_constant_false(restrictlist, joinrel, 0) &&
    bms_is_subset(rel2->relids, sjinfo->syn_righthand))
    mark_dummy_rel(rel2);
   add_paths_to_joinrel(root, joinrel, rel1, rel2,
         129, sjinfo,
         restrictlist);
   add_paths_to_joinrel(root, joinrel, rel2, rel1,
         JOIN_RIGHT, sjinfo,
         restrictlist);
   break;
  case 131:
   if ((is_dummy_rel(rel1) && is_dummy_rel(rel2)) ||
    restriction_is_constant_false(restrictlist, joinrel, 1))
   {
    mark_dummy_rel(joinrel);
    break;
   }
   add_paths_to_joinrel(root, joinrel, rel1, rel2,
         131, sjinfo,
         restrictlist);
   add_paths_to_joinrel(root, joinrel, rel2, rel1,
         131, sjinfo,
         restrictlist);
   if (joinrel->pathlist == NIL)
    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("FULL JOIN is only supported with merge-joinable or hash-joinable join conditions")));
   break;
  case 128:







   if (bms_is_subset(sjinfo->min_lefthand, rel1->relids) &&
    bms_is_subset(sjinfo->min_righthand, rel2->relids))
   {
    if (is_dummy_rel(rel1) || is_dummy_rel(rel2) ||
     restriction_is_constant_false(restrictlist, joinrel, 0))
    {
     mark_dummy_rel(joinrel);
     break;
    }
    add_paths_to_joinrel(root, joinrel, rel1, rel2,
          128, sjinfo,
          restrictlist);
   }
   if (bms_equal(sjinfo->syn_righthand, rel2->relids) &&
    create_unique_path(root, rel2, rel2->cheapest_total_path,
           sjinfo) != ((void*)0))
   {
    if (is_dummy_rel(rel1) || is_dummy_rel(rel2) ||
     restriction_is_constant_false(restrictlist, joinrel, 0))
    {
     mark_dummy_rel(joinrel);
     break;
    }
    add_paths_to_joinrel(root, joinrel, rel1, rel2,
          JOIN_UNIQUE_INNER, sjinfo,
          restrictlist);
    add_paths_to_joinrel(root, joinrel, rel2, rel1,
          JOIN_UNIQUE_OUTER, sjinfo,
          restrictlist);
   }
   break;
  case 132:
   if (is_dummy_rel(rel1) ||
    restriction_is_constant_false(restrictlist, joinrel, 1))
   {
    mark_dummy_rel(joinrel);
    break;
   }
   if (restriction_is_constant_false(restrictlist, joinrel, 0) &&
    bms_is_subset(rel2->relids, sjinfo->syn_righthand))
    mark_dummy_rel(rel2);
   add_paths_to_joinrel(root, joinrel, rel1, rel2,
         132, sjinfo,
         restrictlist);
   break;
  default:

   elog(ERROR, "unrecognized join type: %d", (int) sjinfo->jointype);
   break;
 }


 try_partitionwise_join(root, rel1, rel2, joinrel, sjinfo, restrictlist);
}
