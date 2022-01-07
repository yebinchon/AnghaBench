
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ estimate; } ;
typedef TYPE_1__ eval_const_expressions_context ;
typedef int Oid ;


 char PROVOLATILE_IMMUTABLE ;
 char PROVOLATILE_STABLE ;
 char func_volatile (int ) ;

__attribute__((used)) static bool
ece_function_is_safe(Oid funcid, eval_const_expressions_context *context)
{
 char provolatile = func_volatile(funcid);
 if (provolatile == PROVOLATILE_IMMUTABLE)
  return 1;
 if (context->estimate && provolatile == PROVOLATILE_STABLE)
  return 1;
 return 0;
}
