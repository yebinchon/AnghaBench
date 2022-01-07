
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct expr* expr; } ;
struct expr {scalar_t__ type; TYPE_1__ left; } ;


 scalar_t__ E_SYMBOL ;
 struct expr* expr_copy (struct expr const*) ;

__attribute__((used)) static inline struct expr *
expr_get_leftmost_symbol(const struct expr *e)
{

 if (e == ((void*)0))
  return ((void*)0);

 while (e->type != E_SYMBOL)
  e = e->left.expr;

 return expr_copy(e);
}
