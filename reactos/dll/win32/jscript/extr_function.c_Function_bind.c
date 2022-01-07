
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
typedef int HRESULT ;
typedef int FunctionInstance ;


 int E_NOTIMPL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*,...) ;
 int JS_E_FUNCTION_EXPECTED ;
 int S_OK ;
 int TRACE (char*) ;
 int create_bind_function (int *,int *,int ,unsigned int,int *,int **) ;
 int debugstr_jsval (int ) ;
 int * function_this (int *) ;
 int get_object (int ) ;
 int is_object_instance (int ) ;
 int jsdisp_release (int *) ;
 int jsval_obj (int *) ;
 int throw_type_error (int *,int ,int *) ;

__attribute__((used)) static HRESULT Function_bind(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FunctionInstance *function;
    jsdisp_t *new_function;
    HRESULT hres;

    TRACE("\n");

    if(!(function = function_this(jsthis)))
        return throw_type_error(ctx, JS_E_FUNCTION_EXPECTED, ((void*)0));

    if(argc < 1) {
        FIXME("no this argument\n");
        return E_NOTIMPL;
    }

    if(!is_object_instance(argv[0]) || !get_object(argv[0])) {
        FIXME("%s is not an object instance\n", debugstr_jsval(argv[0]));
        return E_NOTIMPL;
    }

    hres = create_bind_function(ctx, function, get_object(argv[0]), argc - 1, argv + 1, &new_function);
    if(FAILED(hres))
        return hres;

    if(r)
        *r = jsval_obj(new_function);
    else
        jsdisp_release(new_function);
    return S_OK;
}
