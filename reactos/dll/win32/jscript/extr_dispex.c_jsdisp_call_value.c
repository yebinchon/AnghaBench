
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vdisp_t ;
typedef int jsval_t ;
struct TYPE_9__ {int ctx; TYPE_2__* builtin_info; } ;
typedef TYPE_3__ jsdisp_t ;
typedef int WORD ;
struct TYPE_7__ {int (* invoke ) (int ,int *,int,unsigned int,int *,int *) ;} ;
struct TYPE_8__ {TYPE_1__ value_prop; } ;
typedef int IDispatch ;
typedef int HRESULT ;


 int DISPATCH_CONSTRUCT ;
 int DISPATCH_JSCRIPT_INTERNAL_MASK ;
 int DISPATCH_METHOD ;
 int Function_invoke (TYPE_3__*,int *,int,unsigned int,int *,int *) ;
 int JSCLASS_FUNCTION ;
 int JS_E_FUNCTION_EXPECTED ;
 int WARN (char*) ;
 int assert (int) ;
 scalar_t__ is_class (TYPE_3__*,int ) ;
 int set_disp (int *,int *) ;
 int stub1 (int ,int *,int,unsigned int,int *,int *) ;
 int throw_type_error (int ,int ,int *) ;
 int vdisp_release (int *) ;

HRESULT jsdisp_call_value(jsdisp_t *jsfunc, IDispatch *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    HRESULT hres;

    assert(!(flags & ~(DISPATCH_METHOD|DISPATCH_CONSTRUCT|DISPATCH_JSCRIPT_INTERNAL_MASK)));

    if(is_class(jsfunc, JSCLASS_FUNCTION)) {
        hres = Function_invoke(jsfunc, jsthis, flags, argc, argv, r);
    }else {
        vdisp_t vdisp;

        if(!jsfunc->builtin_info->value_prop.invoke) {
            WARN("Not a function\n");
            return throw_type_error(jsfunc->ctx, JS_E_FUNCTION_EXPECTED, ((void*)0));
        }

        set_disp(&vdisp, jsthis);
        flags &= ~DISPATCH_JSCRIPT_INTERNAL_MASK;
        hres = jsfunc->builtin_info->value_prop.invoke(jsfunc->ctx, &vdisp, flags, argc, argv, r);
        vdisp_release(&vdisp);
    }
    return hres;
}
