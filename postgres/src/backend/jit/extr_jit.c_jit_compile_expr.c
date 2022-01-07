
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ExprState {TYPE_2__* parent; } ;
struct TYPE_6__ {int (* compile_expr ) (struct ExprState*) ;} ;
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_4__ {int es_jit_flags; } ;


 int PGJIT_EXPR ;
 int PGJIT_PERFORM ;
 TYPE_3__ provider ;
 scalar_t__ provider_init () ;
 int stub1 (struct ExprState*) ;

bool
jit_compile_expr(struct ExprState *state)
{
 if (!state->parent)
  return 0;


 if (!(state->parent->state->es_jit_flags & PGJIT_PERFORM))
  return 0;


 if (!(state->parent->state->es_jit_flags & PGJIT_EXPR))
  return 0;


 if (provider_init())
  return provider.compile_expr(state);

 return 0;
}
