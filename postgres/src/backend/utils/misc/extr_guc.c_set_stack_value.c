
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_string {int * variable; } ;
struct config_real {int * variable; } ;
struct config_int {int * variable; } ;
struct config_generic {int vartype; int extra; } ;
struct config_enum {int * variable; } ;
struct config_bool {int * variable; } ;
struct TYPE_4__ {int enumval; int stringval; int realval; int intval; int boolval; } ;
struct TYPE_5__ {int extra; TYPE_1__ val; } ;
typedef TYPE_2__ config_var_value ;







 int set_extra_field (struct config_generic*,int *,int ) ;
 int set_string_field (struct config_string*,int *,int ) ;

__attribute__((used)) static void
set_stack_value(struct config_generic *gconf, config_var_value *val)
{
 switch (gconf->vartype)
 {
  case 132:
   val->val.boolval =
    *((struct config_bool *) gconf)->variable;
   break;
  case 130:
   val->val.intval =
    *((struct config_int *) gconf)->variable;
   break;
  case 129:
   val->val.realval =
    *((struct config_real *) gconf)->variable;
   break;
  case 128:
   set_string_field((struct config_string *) gconf,
        &(val->val.stringval),
        *((struct config_string *) gconf)->variable);
   break;
  case 131:
   val->val.enumval =
    *((struct config_enum *) gconf)->variable;
   break;
 }
 set_extra_field(gconf, &(val->extra), gconf->extra);
}
