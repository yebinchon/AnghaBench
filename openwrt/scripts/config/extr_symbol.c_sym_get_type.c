
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int type; scalar_t__ visible; } ;
typedef enum symbol_type { ____Placeholder_symbol_type } symbol_type ;


 int S_BOOLEAN ;
 int S_TRISTATE ;
 scalar_t__ modules_val ;
 scalar_t__ no ;
 scalar_t__ sym_is_choice_value (struct symbol*) ;
 scalar_t__ yes ;

enum symbol_type sym_get_type(struct symbol *sym)
{
 enum symbol_type type = sym->type;

 if (type == S_TRISTATE) {
  if (sym_is_choice_value(sym) && sym->visible == yes)
   type = S_BOOLEAN;
  else if (modules_val == no)
   type = S_BOOLEAN;
 }
 return type;
}
