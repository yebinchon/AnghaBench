
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int UINT32 ;
typedef int INT32 ;
typedef int HRESULT ;


 scalar_t__ SUCCEEDED (int ) ;
 int to_int32 (int *,int ,int *) ;

HRESULT to_uint32(script_ctx_t *ctx, jsval_t val, UINT32 *ret)
{
    INT32 n;
    HRESULT hres;

    hres = to_int32(ctx, val, &n);
    if(SUCCEEDED(hres))
        *ret = n;
    return hres;
}
