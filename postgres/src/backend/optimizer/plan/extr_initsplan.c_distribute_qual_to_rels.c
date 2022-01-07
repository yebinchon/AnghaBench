
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


struct TYPE_22__ {int hasLateralRTEs; int hasPseudoConstantQuals; int * full_join_clauses; int * right_join_clauses; int * left_join_clauses; TYPE_1__* parse; } ;
struct TYPE_21__ {int * left_relids; int * right_relids; scalar_t__ can_join; scalar_t__ mergeopfamilies; int * relids; int * qual; } ;
struct TYPE_20__ {scalar_t__ jointree; } ;
typedef TYPE_2__ RestrictInfo ;
typedef int * Relids ;
typedef TYPE_2__ PostponedQual ;
typedef TYPE_4__ PlannerInfo ;
typedef int Node ;
typedef int List ;
typedef scalar_t__ JoinType ;
typedef int Index ;
typedef int Expr ;


 int Assert (int) ;
 scalar_t__ BMS_MULTIPLE ;
 int ERROR ;
 scalar_t__ JOIN_FULL ;
 scalar_t__ JOIN_INNER ;
 int PVC_INCLUDE_PLACEHOLDERS ;
 int PVC_RECURSE_AGGREGATES ;
 int PVC_RECURSE_WINDOWFUNCS ;
 int add_vars_to_targetlist (TYPE_4__*,int *,int *,int) ;
 int * bms_copy (int *) ;
 scalar_t__ bms_is_empty (int *) ;
 scalar_t__ bms_is_subset (int *,int *) ;
 scalar_t__ bms_membership (int *) ;
 scalar_t__ bms_overlap (int *,int *) ;
 scalar_t__ check_equivalence_delay (TYPE_4__*,TYPE_2__*) ;
 int check_mergejoinable (TYPE_2__*) ;
 int check_outerjoin_delay (TYPE_4__*,int **,int **,int) ;
 scalar_t__ check_redundant_nullability_qual (TYPE_4__*,int *) ;
 int contain_volatile_functions (int *) ;
 int distribute_restrictinfo_to_rels (TYPE_4__*,TYPE_2__*) ;
 int elog (int ,char*) ;
 int * get_relids_in_jointree (int *,int) ;
 int initialize_mergeclause_eclasses (TYPE_4__*,TYPE_2__*) ;
 void* lappend (int *,TYPE_2__*) ;
 int list_free (int *) ;
 TYPE_2__* make_restrictinfo (int *,int,int,int,int ,int *,int *,int *) ;
 scalar_t__ palloc (int) ;
 scalar_t__ process_equivalence (TYPE_4__*,TYPE_2__**,int) ;
 int * pull_var_clause (int *,int) ;
 int * pull_varnos (int *) ;

__attribute__((used)) static void
distribute_qual_to_rels(PlannerInfo *root, Node *clause,
      bool is_deduced,
      bool below_outer_join,
      JoinType jointype,
      Index security_level,
      Relids qualscope,
      Relids ojscope,
      Relids outerjoin_nonnullable,
      Relids deduced_nullable_relids,
      List **postponed_qual_list)
{
 Relids relids;
 bool is_pushed_down;
 bool outerjoin_delayed;
 bool pseudoconstant = 0;
 bool maybe_equivalence;
 bool maybe_outer_join;
 Relids nullable_relids;
 RestrictInfo *restrictinfo;




 relids = pull_varnos(clause);
 if (!bms_is_subset(relids, qualscope))
 {
  PostponedQual *pq = (PostponedQual *) palloc(sizeof(PostponedQual));

  Assert(root->hasLateralRTEs);
  Assert(jointype == JOIN_INNER);
  Assert(!is_deduced);
  pq->qual = clause;
  pq->relids = relids;
  *postponed_qual_list = lappend(*postponed_qual_list, pq);
  return;
 }





 if (ojscope && !bms_is_subset(relids, ojscope))
  elog(ERROR, "JOIN qualification cannot refer to other relations");
 if (bms_is_empty(relids))
 {
  if (ojscope)
  {

   relids = bms_copy(ojscope);

  }
  else
  {

   relids = bms_copy(qualscope);
   if (!contain_volatile_functions(clause))
   {

    pseudoconstant = 1;

    root->hasPseudoConstantQuals = 1;

    if (!below_outer_join)
    {
     relids =
      get_relids_in_jointree((Node *) root->parse->jointree,
              0);
     qualscope = bms_copy(relids);
    }
   }
  }
 }
 if (is_deduced)
 {







  Assert(!ojscope);
  is_pushed_down = 1;
  outerjoin_delayed = 0;
  nullable_relids = deduced_nullable_relids;

  maybe_equivalence = 0;
  maybe_outer_join = 0;
 }
 else if (bms_overlap(relids, outerjoin_nonnullable))
 {
  is_pushed_down = 0;
  maybe_equivalence = 0;
  maybe_outer_join = 1;


  outerjoin_delayed = check_outerjoin_delay(root,
              &relids,
              &nullable_relids,
              0);
  Assert(ojscope);
  relids = ojscope;
  Assert(!pseudoconstant);
 }
 else
 {




  is_pushed_down = 1;


  outerjoin_delayed = check_outerjoin_delay(root,
              &relids,
              &nullable_relids,
              1);

  if (outerjoin_delayed)
  {

   Assert(root->hasLateralRTEs || bms_is_subset(relids, qualscope));
   Assert(ojscope == ((void*)0) || bms_is_subset(relids, ojscope));





   maybe_equivalence = 0;







   if (check_redundant_nullability_qual(root, clause))
    return;
  }
  else
  {







   maybe_equivalence = 1;
   if (outerjoin_nonnullable != ((void*)0))
    below_outer_join = 1;
  }





  maybe_outer_join = 0;
 }




 restrictinfo = make_restrictinfo((Expr *) clause,
          is_pushed_down,
          outerjoin_delayed,
          pseudoconstant,
          security_level,
          relids,
          outerjoin_nonnullable,
          nullable_relids);
 if (bms_membership(relids) == BMS_MULTIPLE)
 {
  List *vars = pull_var_clause(clause,
             PVC_RECURSE_AGGREGATES |
             PVC_RECURSE_WINDOWFUNCS |
             PVC_INCLUDE_PLACEHOLDERS);

  add_vars_to_targetlist(root, vars, relids, 0);
  list_free(vars);
 }






 check_mergejoinable(restrictinfo);
 if (restrictinfo->mergeopfamilies)
 {
  if (maybe_equivalence)
  {
   if (check_equivalence_delay(root, restrictinfo) &&
    process_equivalence(root, &restrictinfo, below_outer_join))
    return;

   if (restrictinfo->mergeopfamilies)
    initialize_mergeclause_eclasses(root, restrictinfo);

  }
  else if (maybe_outer_join && restrictinfo->can_join)
  {

   initialize_mergeclause_eclasses(root, restrictinfo);

   if (bms_is_subset(restrictinfo->left_relids,
         outerjoin_nonnullable) &&
    !bms_overlap(restrictinfo->right_relids,
        outerjoin_nonnullable))
   {

    root->left_join_clauses = lappend(root->left_join_clauses,
              restrictinfo);
    return;
   }
   if (bms_is_subset(restrictinfo->right_relids,
         outerjoin_nonnullable) &&
    !bms_overlap(restrictinfo->left_relids,
        outerjoin_nonnullable))
   {

    root->right_join_clauses = lappend(root->right_join_clauses,
               restrictinfo);
    return;
   }
   if (jointype == JOIN_FULL)
   {

    root->full_join_clauses = lappend(root->full_join_clauses,
              restrictinfo);
    return;
   }

  }
  else
  {

   initialize_mergeclause_eclasses(root, restrictinfo);
  }
 }


 distribute_restrictinfo_to_rels(root, restrictinfo);
}
