
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int disp; } ;
struct TYPE_5__ {TYPE_1__ u; } ;
typedef TYPE_2__ vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
typedef int HRESULT ;


 int IDispatch_AddRef (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int jsval_disp (int ) ;

__attribute__((used)) static HRESULT Object_valueOf(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    TRACE("\n");

    if(r) {
        IDispatch_AddRef(jsthis->u.disp);
        *r = jsval_disp(jsthis->u.disp);
    }
    return S_OK;
}
