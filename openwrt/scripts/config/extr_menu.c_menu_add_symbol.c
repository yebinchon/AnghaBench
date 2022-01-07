
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct expr {int dummy; } ;
typedef enum prop_type { ____Placeholder_prop_type } prop_type ;


 int expr_alloc_symbol (struct symbol*) ;
 int menu_add_prop (int,int *,int ,struct expr*) ;

void menu_add_symbol(enum prop_type type, struct symbol *sym, struct expr *dep)
{
 menu_add_prop(type, ((void*)0), expr_alloc_symbol(sym), dep);
}
