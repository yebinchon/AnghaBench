
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int HRESULT ;


 int TRACE (char*) ;
 int global_idx (int *,int,int *) ;

__attribute__((used)) static HRESULT RegExpConstr_get_idx9(script_ctx_t *ctx, jsdisp_t *jsthis, jsval_t *r)
{
    TRACE("\n");
    return global_idx(ctx, 8, r);
}
