
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct config_string {void* reset_extra; } ;
struct config_real {void* reset_extra; } ;
struct config_int {void* reset_extra; } ;
struct config_generic {void* extra; int vartype; TYPE_3__* stack; } ;
struct config_enum {void* reset_extra; } ;
struct config_bool {void* reset_extra; } ;
struct TYPE_5__ {void* extra; } ;
struct TYPE_4__ {void* extra; } ;
struct TYPE_6__ {TYPE_2__ masked; TYPE_1__ prior; struct TYPE_6__* prev; } ;
typedef TYPE_3__ GucStack ;
__attribute__((used)) static bool
extra_field_used(struct config_generic *gconf, void *extra)
{
 GucStack *stack;

 if (extra == gconf->extra)
  return 1;
 switch (gconf->vartype)
 {
  case 132:
   if (extra == ((struct config_bool *) gconf)->reset_extra)
    return 1;
   break;
  case 130:
   if (extra == ((struct config_int *) gconf)->reset_extra)
    return 1;
   break;
  case 129:
   if (extra == ((struct config_real *) gconf)->reset_extra)
    return 1;
   break;
  case 128:
   if (extra == ((struct config_string *) gconf)->reset_extra)
    return 1;
   break;
  case 131:
   if (extra == ((struct config_enum *) gconf)->reset_extra)
    return 1;
   break;
 }
 for (stack = gconf->stack; stack; stack = stack->prev)
 {
  if (extra == stack->prior.extra ||
   extra == stack->masked.extra)
   return 1;
 }

 return 0;
}
