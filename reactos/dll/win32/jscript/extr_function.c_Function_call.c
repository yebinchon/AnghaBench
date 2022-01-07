
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int script_ctx_t ;
typedef int jsval_t ;
typedef int WORD ;
struct TYPE_6__ {TYPE_1__* vtbl; } ;
struct TYPE_5__ {int (* call ) (int *,TYPE_2__*,int *,int ,unsigned int,int *,int *) ;} ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_2__ FunctionInstance ;


 scalar_t__ FAILED (int ) ;
 int IDispatch_Release (int *) ;
 int JS_E_FUNCTION_EXPECTED ;
 int TRACE (char*) ;
 TYPE_2__* function_this (int *) ;
 int is_null (int ) ;
 int is_undefined (int ) ;
 int stub1 (int *,TYPE_2__*,int *,int ,unsigned int,int *,int *) ;
 int throw_type_error (int *,int ,int *) ;
 int to_object (int *,int ,int **) ;

__attribute__((used)) static HRESULT Function_call(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FunctionInstance *function;
    IDispatch *this_obj = ((void*)0);
    unsigned cnt = 0;
    HRESULT hres;

    TRACE("\n");

    if(!(function = function_this(jsthis)))
        return throw_type_error(ctx, JS_E_FUNCTION_EXPECTED, ((void*)0));

    if(argc) {
        if(!is_undefined(argv[0]) && !is_null(argv[0])) {
            hres = to_object(ctx, argv[0], &this_obj);
            if(FAILED(hres))
                return hres;
        }

        cnt = argc-1;
    }

    hres = function->vtbl->call(ctx, function, this_obj, flags, cnt, argv + 1, r);

    if(this_obj)
        IDispatch_Release(this_obj);
    return hres;
}
