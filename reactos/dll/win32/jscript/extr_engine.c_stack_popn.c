
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;


 int jsval_release (int ) ;
 int stack_pop (int *) ;

__attribute__((used)) static void stack_popn(script_ctx_t *ctx, unsigned n)
{
    while(n--)
        jsval_release(stack_pop(ctx));
}
