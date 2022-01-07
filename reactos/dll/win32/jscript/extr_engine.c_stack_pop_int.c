
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int INT ;
typedef int HRESULT ;


 int stack_pop (int *) ;
 int to_int32 (int *,int ,int *) ;

__attribute__((used)) static inline HRESULT stack_pop_int(script_ctx_t *ctx, INT *r)
{
    return to_int32(ctx, stack_pop(ctx), r);
}
