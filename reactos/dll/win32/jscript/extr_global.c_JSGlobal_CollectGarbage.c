
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;


 int FIXME (char*) ;
 int S_OK ;

__attribute__((used)) static HRESULT JSGlobal_CollectGarbage(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    static int once = 0;
    if (!once++)
        FIXME(": stub\n");
    return S_OK;
}
