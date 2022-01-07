
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * current; int already_used; } ;
typedef TYPE_1__ ec_member_foreign_arg ;
struct TYPE_5__ {int * em_expr; } ;
typedef int RelOptInfo ;
typedef int PlannerInfo ;
typedef int Expr ;
typedef TYPE_2__ EquivalenceMember ;
typedef int EquivalenceClass ;


 int equal (int *,int *) ;
 scalar_t__ list_member (int ,int *) ;

__attribute__((used)) static bool
ec_member_matches_foreign(PlannerInfo *root, RelOptInfo *rel,
        EquivalenceClass *ec, EquivalenceMember *em,
        void *arg)
{
 ec_member_foreign_arg *state = (ec_member_foreign_arg *) arg;
 Expr *expr = em->em_expr;





 if (state->current != ((void*)0))
  return equal(expr, state->current);




 if (list_member(state->already_used, expr))
  return 0;


 state->current = expr;
 return 1;
}
