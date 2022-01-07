
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_string {int dummy; } ;
struct config_generic {int vartype; } ;
struct TYPE_4__ {int stringval; } ;
struct TYPE_5__ {int extra; TYPE_1__ val; } ;
typedef TYPE_2__ config_var_value ;







 int set_extra_field (struct config_generic*,int *,int *) ;
 int set_string_field (struct config_string*,int *,int *) ;

__attribute__((used)) static void
discard_stack_value(struct config_generic *gconf, config_var_value *val)
{
 switch (gconf->vartype)
 {
  case 132:
  case 130:
  case 129:
  case 131:

   break;
  case 128:
   set_string_field((struct config_string *) gconf,
        &(val->val.stringval),
        ((void*)0));
   break;
 }
 set_extra_field(gconf, &(val->extra), ((void*)0));
}
