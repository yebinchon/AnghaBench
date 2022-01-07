
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int HRESULT ;


 int TRACE (char*) ;
 int jsval_null () ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_null(script_ctx_t *ctx)
{
    TRACE("\n");

    return stack_push(ctx, jsval_null());
}
