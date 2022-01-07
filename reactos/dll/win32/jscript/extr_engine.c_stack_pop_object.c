
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int IDispatch ;
typedef int HRESULT ;


 int JS_E_OBJECT_REQUIRED ;
 int S_OK ;
 int * get_object (int ) ;
 scalar_t__ is_object_instance (int ) ;
 int jsval_release (int ) ;
 int stack_pop (int *) ;
 int throw_type_error (int *,int ,int *) ;
 int to_object (int *,int ,int **) ;

__attribute__((used)) static HRESULT stack_pop_object(script_ctx_t *ctx, IDispatch **r)
{
    jsval_t v;
    HRESULT hres;

    v = stack_pop(ctx);
    if(is_object_instance(v)) {
        if(!get_object(v))
            return throw_type_error(ctx, JS_E_OBJECT_REQUIRED, ((void*)0));
        *r = get_object(v);
        return S_OK;
    }

    hres = to_object(ctx, v, r);
    jsval_release(v);
    return hres;
}
