
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
struct TYPE_5__ {int disp; int id; } ;
struct TYPE_6__ {int hres; int off; TYPE_1__ idref; } ;
struct TYPE_7__ {int type; TYPE_2__ u; } ;
typedef TYPE_3__ exprval_t ;
typedef int HRESULT ;






 int E_FAIL ;
 int IDispatch_Release (int ) ;
 int SUCCEEDED (int ) ;
 int assert (int ) ;
 int jsval_disp (int ) ;
 int jsval_number (int ) ;
 int jsval_undefined () ;
 int stack_push (int *,int ) ;

__attribute__((used)) static HRESULT stack_push_exprval(script_ctx_t *ctx, exprval_t *val)
{
    HRESULT hres;

    switch(val->type) {
    case 129:
        assert(0);
    case 131:
        hres = stack_push(ctx, jsval_disp(val->u.idref.disp));
        if(SUCCEEDED(hres))
            hres = stack_push(ctx, jsval_number(val->u.idref.id));
        else
            IDispatch_Release(val->u.idref.disp);
        return hres;
    case 128:
        hres = stack_push(ctx, jsval_number(val->u.off));
        if(SUCCEEDED(hres))
            hres = stack_push(ctx, jsval_undefined());
        return hres;
    case 130:
        hres = stack_push(ctx, jsval_undefined());
        if(SUCCEEDED(hres))
            hres = stack_push(ctx, jsval_number(val->u.hres));
        return hres;
    }

    assert(0);
    return E_FAIL;
}
