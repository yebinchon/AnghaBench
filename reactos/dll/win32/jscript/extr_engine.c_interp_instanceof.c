
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int script_ctx_t ;
typedef int jsval_t ;
struct TYPE_7__ {struct TYPE_7__* prototype; } ;
typedef TYPE_1__ jsdisp_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef int BOOL ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int FIXME (char*) ;
 int IDispatch_Release (int ) ;
 int JSCLASS_FUNCTION ;
 int JS_E_FUNCTION_EXPECTED ;
 int disp_cmp (int ,int ,int *) ;
 int get_object (int ) ;
 TYPE_1__* iface_to_jsdisp (int ) ;
 scalar_t__ is_class (TYPE_1__*,int ) ;
 scalar_t__ is_object_instance (int ) ;
 int jsdisp_propget_name (TYPE_1__*,char const*,int *) ;
 int jsdisp_release (TYPE_1__*) ;
 int jsval_bool (int ) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int stack_push (int *,int ) ;
 int throw_type_error (int *,int ,int *) ;
 int to_disp (TYPE_1__*) ;

__attribute__((used)) static HRESULT interp_instanceof(script_ctx_t *ctx)
{
    jsdisp_t *obj, *iter, *tmp = ((void*)0);
    jsval_t prot, v;
    BOOL ret = FALSE;
    HRESULT hres;

    static const WCHAR prototypeW[] = {'p','r','o','t','o','t', 'y', 'p','e',0};

    v = stack_pop(ctx);
    if(!is_object_instance(v) || !get_object(v)) {
        jsval_release(v);
        return throw_type_error(ctx, JS_E_FUNCTION_EXPECTED, ((void*)0));
    }

    obj = iface_to_jsdisp(get_object(v));
    IDispatch_Release(get_object(v));
    if(!obj) {
        FIXME("non-jsdisp objects not supported\n");
        return E_FAIL;
    }

    if(is_class(obj, JSCLASS_FUNCTION)) {
        hres = jsdisp_propget_name(obj, prototypeW, &prot);
    }else {
        hres = throw_type_error(ctx, JS_E_FUNCTION_EXPECTED, ((void*)0));
    }
    jsdisp_release(obj);
    if(FAILED(hres))
        return hres;

    v = stack_pop(ctx);

    if(is_object_instance(prot)) {
        if(is_object_instance(v))
            tmp = iface_to_jsdisp(get_object(v));
        for(iter = tmp; !ret && iter; iter = iter->prototype) {
            hres = disp_cmp(get_object(prot), to_disp(iter), &ret);
            if(FAILED(hres))
                break;
        }

        if(tmp)
            jsdisp_release(tmp);
    }else {
        FIXME("prototype is not an object\n");
        hres = E_FAIL;
    }

    jsval_release(prot);
    jsval_release(v);
    if(FAILED(hres))
        return hres;

    return stack_push(ctx, jsval_bool(ret));
}
