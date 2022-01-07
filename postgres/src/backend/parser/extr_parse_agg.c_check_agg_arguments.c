
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int min_varlevel; int min_agglevel; scalar_t__ sublevels_up; int * pstate; } ;
typedef TYPE_1__ check_agg_arguments_context ;
typedef int ParseState ;
typedef int Node ;
typedef int List ;
typedef int Expr ;


 int ERRCODE_GROUPING_ERROR ;
 int ERROR ;
 int Min (int,int) ;
 int check_agg_arguments_walker ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int expression_tree_walker (int *,int ,void*) ;
 int locate_agg_of_level (int *,int) ;
 int locate_var_of_level (int *,int) ;
 int parser_errposition (int *,int) ;

__attribute__((used)) static int
check_agg_arguments(ParseState *pstate,
     List *directargs,
     List *args,
     Expr *filter)
{
 int agglevel;
 check_agg_arguments_context context;

 context.pstate = pstate;
 context.min_varlevel = -1;
 context.min_agglevel = -1;
 context.sublevels_up = 0;

 (void) expression_tree_walker((Node *) args,
          check_agg_arguments_walker,
          (void *) &context);

 (void) expression_tree_walker((Node *) filter,
          check_agg_arguments_walker,
          (void *) &context);





 if (context.min_varlevel < 0)
 {
  if (context.min_agglevel < 0)
   agglevel = 0;
  else
   agglevel = context.min_agglevel;
 }
 else if (context.min_agglevel < 0)
  agglevel = context.min_varlevel;
 else
  agglevel = Min(context.min_varlevel, context.min_agglevel);




 if (agglevel == context.min_agglevel)
 {
  int aggloc;

  aggloc = locate_agg_of_level((Node *) args, agglevel);
  if (aggloc < 0)
   aggloc = locate_agg_of_level((Node *) filter, agglevel);
  ereport(ERROR,
    (errcode(ERRCODE_GROUPING_ERROR),
     errmsg("aggregate function calls cannot be nested"),
     parser_errposition(pstate, aggloc)));
 }
 if (directargs)
 {
  context.min_varlevel = -1;
  context.min_agglevel = -1;
  (void) expression_tree_walker((Node *) directargs,
           check_agg_arguments_walker,
           (void *) &context);
  if (context.min_varlevel >= 0 && context.min_varlevel < agglevel)
   ereport(ERROR,
     (errcode(ERRCODE_GROUPING_ERROR),
      errmsg("outer-level aggregate cannot contain a lower-level variable in its direct arguments"),
      parser_errposition(pstate,
          locate_var_of_level((Node *) directargs,
               context.min_varlevel))));
  if (context.min_agglevel >= 0 && context.min_agglevel <= agglevel)
   ereport(ERROR,
     (errcode(ERRCODE_GROUPING_ERROR),
      errmsg("aggregate function calls cannot be nested"),
      parser_errposition(pstate,
          locate_agg_of_level((Node *) directargs,
               context.min_agglevel))));
 }
 return agglevel;
}
