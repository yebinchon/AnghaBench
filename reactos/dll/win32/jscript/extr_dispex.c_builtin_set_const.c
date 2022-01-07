
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int *,int ) ;
 int debugstr_jsval (int ) ;

HRESULT builtin_set_const(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t value)
{
    TRACE("%p %s\n", jsthis, debugstr_jsval(value));
    return S_OK;
}
