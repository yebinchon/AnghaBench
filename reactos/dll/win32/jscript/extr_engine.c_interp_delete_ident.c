
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_6__ {int disp; int id; } ;
struct TYPE_7__ {TYPE_1__ idref; } ;
struct TYPE_8__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ exprval_t ;
typedef int HRESULT ;
typedef int BSTR ;
typedef int BOOL ;





 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int IDispatch_Release (int ) ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (int const) ;
 int disp_delete (int ,int ,int *) ;
 int exprval_release (TYPE_3__*) ;
 int get_op_bstr (int *,int ) ;
 int identifier_eval (int *,int const,TYPE_3__*) ;
 int jsval_bool (int ) ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT interp_delete_ident(script_ctx_t *ctx)
{
    const BSTR arg = get_op_bstr(ctx, 0);
    exprval_t exprval;
    BOOL ret;
    HRESULT hres;

    TRACE("%s\n", debugstr_w(arg));

    hres = identifier_eval(ctx, arg, &exprval);
    if(FAILED(hres))
        return hres;

    switch(exprval.type) {
    case 128:
        ret = FALSE;
        break;
    case 130:
        hres = disp_delete(exprval.u.idref.disp, exprval.u.idref.id, &ret);
        IDispatch_Release(exprval.u.idref.disp);
        if(FAILED(hres))
            return hres;
        break;
    case 129:
        ret = TRUE;
        break;
    default:
        FIXME("Unsupported exprval\n");
        exprval_release(&exprval);
        return E_NOTIMPL;
    }


    return stack_push(ctx, jsval_bool(ret));
}
