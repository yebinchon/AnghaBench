
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int location; int strength; int collation; int * pstate; } ;
typedef TYPE_1__ assign_collations_context ;
typedef int ParseState ;
typedef int Node ;


 int COLLATE_NONE ;
 int InvalidOid ;
 int assign_collations_walker (int *,TYPE_1__*) ;

void
assign_expr_collations(ParseState *pstate, Node *expr)
{
 assign_collations_context context;


 context.pstate = pstate;
 context.collation = InvalidOid;
 context.strength = COLLATE_NONE;
 context.location = -1;


 (void) assign_collations_walker(expr, &context);
}
