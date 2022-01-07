
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int disp; } ;
struct TYPE_11__ {int flags; TYPE_2__ u; } ;
typedef TYPE_3__ vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
struct TYPE_12__ {TYPE_1__* vtbl; } ;
struct TYPE_9__ {int (* call ) (int *,TYPE_4__*,int *,int ,unsigned int,int *,int *) ;} ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_4__ FunctionInstance ;


 int DISPATCH_METHOD ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int FIXME (char*) ;
 int IDispatch_Release (int *) ;
 int JSCLASS_ARGUMENTS ;
 int JSCLASS_ARRAY ;
 int JS_E_FUNCTION_EXPECTED ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int TRACE (char*) ;
 int VDISP_JSDISP ;
 int array_to_args (int *,int *,unsigned int*,int **) ;
 int disp_call_value (int *,int ,int *,int ,unsigned int,int *,int *) ;
 TYPE_4__* function_this (TYPE_3__*) ;
 int get_object (int ) ;
 int heap_free (int *) ;
 int * iface_to_jsdisp (int ) ;
 int is_class (int *,int ) ;
 int is_null (int ) ;
 scalar_t__ is_object_instance (int ) ;
 int is_undefined (int ) ;
 int jsdisp_release (int *) ;
 int jsval_release (int ) ;
 int stub1 (int *,TYPE_4__*,int *,int ,unsigned int,int *,int *) ;
 int throw_type_error (int *,int ,int *) ;
 int to_object (int *,int ,int **) ;

__attribute__((used)) static HRESULT Function_apply(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    FunctionInstance *function;
    jsval_t *args = ((void*)0);
    unsigned i, cnt = 0;
    IDispatch *this_obj = ((void*)0);
    HRESULT hres = S_OK;

    TRACE("\n");

    if(!(function = function_this(jsthis)) && (jsthis->flags & VDISP_JSDISP))
        return throw_type_error(ctx, JS_E_FUNCTION_EXPECTED, ((void*)0));

    if(argc) {
        if(!is_undefined(argv[0]) && !is_null(argv[0])) {
            hres = to_object(ctx, argv[0], &this_obj);
            if(FAILED(hres))
                return hres;
        }
    }

    if(argc >= 2) {
        jsdisp_t *arg_array = ((void*)0);

        if(is_object_instance(argv[1])) {
            arg_array = iface_to_jsdisp(get_object(argv[1]));
            if(arg_array &&
               (!is_class(arg_array, JSCLASS_ARRAY) && !is_class(arg_array, JSCLASS_ARGUMENTS) )) {
                jsdisp_release(arg_array);
                arg_array = ((void*)0);
            }
        }

        if(arg_array) {
            hres = array_to_args(ctx, arg_array, &cnt, &args);
            jsdisp_release(arg_array);
        }else {
            FIXME("throw TypeError\n");
            hres = E_FAIL;
        }
    }

    if(SUCCEEDED(hres)) {
        if(function) {
            hres = function->vtbl->call(ctx, function, this_obj, flags, cnt, args, r);
        }else {
            jsval_t res;
            hres = disp_call_value(ctx, jsthis->u.disp, this_obj, DISPATCH_METHOD, cnt, args, &res);
            if(SUCCEEDED(hres)) {
                if(r)
                    *r = res;
                else
                    jsval_release(res);
            }
        }
    }

    if(this_obj)
        IDispatch_Release(this_obj);
    for(i=0; i < cnt; i++)
        jsval_release(args[i]);
    heap_free(args);
    return hres;
}
