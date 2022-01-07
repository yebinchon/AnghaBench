
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int WORD ;
struct TYPE_7__ {int ctx; } ;
struct TYPE_8__ {TYPE_2__ dispex; TYPE_1__* vtbl; } ;
struct TYPE_6__ {int (* call ) (int ,TYPE_3__*,int *,int ,unsigned int,int *,int *) ;} ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef TYPE_3__ FunctionInstance ;


 int JSCLASS_FUNCTION ;
 int TRACE (char*,int *,int *) ;
 int assert (int ) ;
 TYPE_3__* function_from_jsdisp (int *) ;
 int is_class (int *,int ) ;
 int stub1 (int ,TYPE_3__*,int *,int ,unsigned int,int *,int *) ;

HRESULT Function_invoke(jsdisp_t *func_this, IDispatch *jsthis, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    FunctionInstance *function;

    TRACE("func %p this %p\n", func_this, jsthis);

    assert(is_class(func_this, JSCLASS_FUNCTION));
    function = function_from_jsdisp(func_this);

    return function->vtbl->call(function->dispex.ctx, function, jsthis, flags, argc, argv, r);
}
