
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tristate ;
struct TYPE_6__ {scalar_t__ val; } ;
struct symbol {int type; TYPE_2__ curr; } ;
struct TYPE_5__ {int const tri; } ;
struct TYPE_7__ {TYPE_1__ curr; } ;





 TYPE_3__* modules_sym ;

 int sym_calc_value (TYPE_3__*) ;
 int sym_get_tristate_value (struct symbol*) ;


const char *sym_get_string_value(struct symbol *sym)
{
 tristate val;

 switch (sym->type) {
 case 132:
 case 131:
  val = sym_get_tristate_value(sym);
  switch (val) {
  case 129:
   return "n";
  case 130:
   sym_calc_value(modules_sym);
   return (modules_sym->curr.tri == 129) ? "n" : "m";
  case 128:
   return "y";
  }
  break;
 default:
  ;
 }
 return (const char *)sym->curr.val;
}
