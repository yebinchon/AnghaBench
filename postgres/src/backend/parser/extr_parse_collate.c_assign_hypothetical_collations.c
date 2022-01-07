
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ collation; scalar_t__ strength; int location; scalar_t__ collation2; int location2; int pstate; } ;
typedef TYPE_1__ assign_collations_context ;
struct TYPE_9__ {int * expr; } ;
typedef TYPE_2__ TargetEntry ;
struct TYPE_10__ {int args; int aggdirectargs; int aggfnoid; } ;
typedef int Node ;
typedef int ListCell ;
typedef int Expr ;
typedef TYPE_3__ Aggref ;


 int Assert (int) ;
 int COERCE_IMPLICIT_CAST ;
 scalar_t__ COLLATE_CONFLICT ;
 scalar_t__ COLLATE_NONE ;
 int ERRCODE_COLLATION_MISMATCH ;
 int ERROR ;
 scalar_t__ InvalidOid ;
 scalar_t__ OidIsValid (scalar_t__) ;
 int assign_collations_walker (int *,TYPE_1__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ) ;
 scalar_t__ exprCollation (int *) ;
 int exprType (int *) ;
 int exprTypmod (int *) ;
 int get_collation_name (scalar_t__) ;
 scalar_t__ get_func_variadictype (int ) ;
 scalar_t__ lfirst (int *) ;
 int * list_head (int ) ;
 int list_length (int ) ;
 int * lnext (int ,int *) ;
 scalar_t__ makeRelabelType (int *,int ,int ,scalar_t__,int ) ;
 int merge_collation_state (scalar_t__,scalar_t__,int,scalar_t__,int,TYPE_1__*) ;
 int parser_errposition (int ,int) ;

__attribute__((used)) static void
assign_hypothetical_collations(Aggref *aggref,
          assign_collations_context *loccontext)
{
 ListCell *h_cell = list_head(aggref->aggdirectargs);
 ListCell *s_cell = list_head(aggref->args);
 bool merge_sort_collations;
 int extra_args;


 merge_sort_collations = (list_length(aggref->args) == 1 &&
        get_func_variadictype(aggref->aggfnoid) == InvalidOid);


 extra_args = list_length(aggref->aggdirectargs) - list_length(aggref->args);
 Assert(extra_args >= 0);
 while (extra_args-- > 0)
 {
  (void) assign_collations_walker((Node *) lfirst(h_cell), loccontext);
  h_cell = lnext(aggref->aggdirectargs, h_cell);
 }


 while (h_cell && s_cell)
 {
  Node *h_arg = (Node *) lfirst(h_cell);
  TargetEntry *s_tle = (TargetEntry *) lfirst(s_cell);
  assign_collations_context paircontext;
  paircontext.pstate = loccontext->pstate;
  paircontext.collation = InvalidOid;
  paircontext.strength = COLLATE_NONE;
  paircontext.location = -1;

  paircontext.collation2 = InvalidOid;
  paircontext.location2 = -1;

  (void) assign_collations_walker(h_arg, &paircontext);
  (void) assign_collations_walker((Node *) s_tle->expr, &paircontext);


  if (paircontext.strength == COLLATE_CONFLICT)
   ereport(ERROR,
     (errcode(ERRCODE_COLLATION_MISMATCH),
      errmsg("collation mismatch between implicit collations \"%s\" and \"%s\"",
       get_collation_name(paircontext.collation),
       get_collation_name(paircontext.collation2)),
      errhint("You can choose the collation by applying the COLLATE clause to one or both expressions."),
      parser_errposition(paircontext.pstate,
          paircontext.location2)));
  if (OidIsValid(paircontext.collation) &&
   paircontext.collation != exprCollation((Node *) s_tle->expr))
  {
   s_tle->expr = (Expr *)
    makeRelabelType(s_tle->expr,
        exprType((Node *) s_tle->expr),
        exprTypmod((Node *) s_tle->expr),
        paircontext.collation,
        COERCE_IMPLICIT_CAST);
  }





  if (merge_sort_collations)
   merge_collation_state(paircontext.collation,
          paircontext.strength,
          paircontext.location,
          paircontext.collation2,
          paircontext.location2,
          loccontext);

  h_cell = lnext(aggref->aggdirectargs, h_cell);
  s_cell = lnext(aggref->args, s_cell);
 }
 Assert(h_cell == ((void*)0) && s_cell == ((void*)0));
}
