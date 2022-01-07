
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsstr_t ;
struct TYPE_5__ {int hres; } ;
struct TYPE_6__ {TYPE_1__ u; } ;
typedef TYPE_2__ exprval_t ;
typedef int IDispatchEx ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int DISPID ;
typedef int * BSTR ;


 int E_FAIL ;
 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,int ) ;
 int IDispatchEx_GetMemberName (int *,int ,int **) ;
 int IDispatchEx_GetNextDispID (int *,int ,int ,int *) ;
 int IDispatchEx_Release (int *) ;
 int IDispatch_QueryInterface (int *,int *,void**) ;
 int IID_IDispatchEx ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int SysFreeString (int *) ;
 int SysStringLen (int *) ;
 int TRACE (char*) ;
 int assert (int ) ;
 int exprval_propput (int *,TYPE_2__*,int ) ;
 int fdexEnumDefault ;
 int get_number (int ) ;
 int * get_object (int ) ;
 int get_op_uint (int *,int ) ;
 int is_number (int ) ;
 scalar_t__ is_object_instance (int ) ;
 int jmp_abs (int *,int const) ;
 int jmp_next (int *) ;
 int * jsstr_alloc_len (int *,int ) ;
 int jsstr_release (int *) ;
 int jsval_number (int ) ;
 int jsval_string (int *) ;
 int stack_pop (int *) ;
 int stack_popn (int *,int) ;
 int stack_push (int *,int ) ;
 int stack_top (int *) ;
 int stack_topn (int *,int) ;
 int stack_topn_exprval (int *,int,TYPE_2__*) ;

__attribute__((used)) static HRESULT interp_forin(script_ctx_t *ctx)
{
    const HRESULT arg = get_op_uint(ctx, 0);
    IDispatch *obj = ((void*)0);
    IDispatchEx *dispex;
    exprval_t prop_ref;
    DISPID id;
    BSTR name = ((void*)0);
    HRESULT hres;

    TRACE("\n");

    assert(is_number(stack_top(ctx)));
    id = get_number(stack_top(ctx));

    if(!stack_topn_exprval(ctx, 1, &prop_ref)) {
        FIXME("invalid ref: %08x\n", prop_ref.u.hres);
        return E_FAIL;
    }

    if(is_object_instance(stack_topn(ctx, 3)))
        obj = get_object(stack_topn(ctx, 3));

    if(obj) {
        hres = IDispatch_QueryInterface(obj, &IID_IDispatchEx, (void**)&dispex);
        if(SUCCEEDED(hres)) {
            hres = IDispatchEx_GetNextDispID(dispex, fdexEnumDefault, id, &id);
            if(hres == S_OK)
                hres = IDispatchEx_GetMemberName(dispex, id, &name);
            IDispatchEx_Release(dispex);
            if(FAILED(hres))
                return hres;
        }else {
            TRACE("No IDispatchEx\n");
        }
    }

    if(name) {
        jsstr_t *str;

        str = jsstr_alloc_len(name, SysStringLen(name));
        SysFreeString(name);
        if(!str)
            return E_OUTOFMEMORY;

        stack_pop(ctx);
        stack_push(ctx, jsval_number(id));

        hres = exprval_propput(ctx, &prop_ref, jsval_string(str));
        jsstr_release(str);
        if(FAILED(hres))
            return hres;

        jmp_next(ctx);
    }else {
        stack_popn(ctx, 4);
        jmp_abs(ctx, arg);
    }
    return S_OK;
}
