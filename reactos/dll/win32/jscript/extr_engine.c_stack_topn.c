
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;


 int * stack_top_ref (int *,unsigned int) ;

__attribute__((used)) static inline jsval_t stack_topn(script_ctx_t *ctx, unsigned n)
{
    return *stack_top_ref(ctx, n);
}
