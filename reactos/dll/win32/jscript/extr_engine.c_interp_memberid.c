
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsstr_t ;
struct TYPE_6__ {int id; int * disp; } ;
struct TYPE_7__ {TYPE_1__ idref; } ;
struct TYPE_8__ {TYPE_2__ u; int type; } ;
typedef TYPE_3__ exprval_t ;
typedef int WCHAR ;
typedef int IDispatch ;
typedef scalar_t__ HRESULT ;
typedef int DISPID ;


 scalar_t__ DISP_E_UNKNOWNNAME ;
 int ERR (char*,scalar_t__) ;
 int EXPRVAL_IDREF ;
 scalar_t__ FAILED (scalar_t__) ;
 int IDispatch_Release (int *) ;
 int JS_E_INVALID_PROPERTY ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int TRACE (char*,unsigned int const) ;
 scalar_t__ disp_get_id (int *,int *,int const*,int *,unsigned int const,int *) ;
 int exprval_set_exception (TYPE_3__*,int ) ;
 unsigned int const fdexNameEnsure ;
 unsigned int get_op_uint (int *,int ) ;
 int jsstr_release (int *) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 scalar_t__ stack_push_exprval (int *,TYPE_3__*) ;
 scalar_t__ to_flat_string (int *,int ,int **,int const**) ;
 scalar_t__ to_object (int *,int ,int **) ;

__attribute__((used)) static HRESULT interp_memberid(script_ctx_t *ctx)
{
    const unsigned arg = get_op_uint(ctx, 0);
    jsval_t objv, namev;
    const WCHAR *name;
    jsstr_t *name_str;
    IDispatch *obj;
    exprval_t ref;
    DISPID id;
    HRESULT hres;

    TRACE("%x\n", arg);

    namev = stack_pop(ctx);
    objv = stack_pop(ctx);

    hres = to_object(ctx, objv, &obj);
    jsval_release(objv);
    if(SUCCEEDED(hres)) {
        hres = to_flat_string(ctx, namev, &name_str, &name);
        if(FAILED(hres))
            IDispatch_Release(obj);
    }
    jsval_release(namev);
    if(FAILED(hres))
        return hres;

    hres = disp_get_id(ctx, obj, name, ((void*)0), arg, &id);
    jsstr_release(name_str);
    if(SUCCEEDED(hres)) {
        ref.type = EXPRVAL_IDREF;
        ref.u.idref.disp = obj;
        ref.u.idref.id = id;
    }else {
        IDispatch_Release(obj);
        if(hres == DISP_E_UNKNOWNNAME && !(arg & fdexNameEnsure)) {
            exprval_set_exception(&ref, JS_E_INVALID_PROPERTY);
            hres = S_OK;
        }else {
            ERR("failed %08x\n", hres);
            return hres;
        }
    }

    return stack_push_exprval(ctx, &ref);
}
