
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StrategyNumber ;
typedef int PartitionPruneStep ;
typedef int Oid ;
typedef int List ;
typedef int GeneratePruningStepsContext ;
typedef int Expr ;
typedef int Bitmapset ;


 int NIL ;
 int * gen_prune_step_op (int *,int ,int,int *,int ,int *) ;
 int * get_steps_using_prefix_recurse (int *,int ,int,int *,int ,int,int *,int *,int ,int ,int ) ;
 int list_head (int *) ;
 scalar_t__ list_length (int *) ;
 int * list_make1 (int *) ;
 int list_make1_oid (int ) ;

__attribute__((used)) static List *
get_steps_using_prefix(GeneratePruningStepsContext *context,
        StrategyNumber step_opstrategy,
        bool step_op_is_ne,
        Expr *step_lastexpr,
        Oid step_lastcmpfn,
        int step_lastkeyno,
        Bitmapset *step_nullkeys,
        List *prefix)
{

 if (list_length(prefix) == 0)
 {
  PartitionPruneStep *step;

  step = gen_prune_step_op(context,
         step_opstrategy,
         step_op_is_ne,
         list_make1(step_lastexpr),
         list_make1_oid(step_lastcmpfn),
         step_nullkeys);
  return list_make1(step);
 }


 return get_steps_using_prefix_recurse(context,
            step_opstrategy,
            step_op_is_ne,
            step_lastexpr,
            step_lastcmpfn,
            step_lastkeyno,
            step_nullkeys,
            prefix,
            list_head(prefix),
            NIL, NIL);
}
