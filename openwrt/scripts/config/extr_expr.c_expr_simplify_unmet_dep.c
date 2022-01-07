
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {struct expr* expr; } ;
struct TYPE_3__ {struct expr* expr; } ;
struct expr {int type; TYPE_2__ right; TYPE_1__ left; } ;




 struct expr* expr_alloc_and (struct expr*,struct expr*) ;
 struct expr* expr_copy (struct expr*) ;
 struct expr* expr_eliminate_dups (struct expr*) ;
 int expr_eq (struct expr*,struct expr*) ;
 int expr_free (struct expr*) ;
 struct expr* expr_get_leftmost_symbol (struct expr*) ;

struct expr *expr_simplify_unmet_dep(struct expr *e1, struct expr *e2)
{
 struct expr *ret;

 switch (e1->type) {
 case 128:
  return expr_alloc_and(
      expr_simplify_unmet_dep(e1->left.expr, e2),
      expr_simplify_unmet_dep(e1->right.expr, e2));
 case 129: {
  struct expr *e;
  e = expr_alloc_and(expr_copy(e1), expr_copy(e2));
  e = expr_eliminate_dups(e);
  ret = (!expr_eq(e, e1)) ? e1 : ((void*)0);
  expr_free(e);
  break;
  }
 default:
  ret = e1;
  break;
 }

 return expr_get_leftmost_symbol(ret);
}
