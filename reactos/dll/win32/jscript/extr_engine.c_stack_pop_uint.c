
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;
typedef int DWORD ;


 int stack_pop (int *) ;
 int to_uint32 (int *,int ,int *) ;

__attribute__((used)) static inline HRESULT stack_pop_uint(script_ctx_t *ctx, DWORD *r)
{
    return to_uint32(ctx, stack_pop(ctx), r);
}
