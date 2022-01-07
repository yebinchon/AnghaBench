
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vdisp_t ;
struct TYPE_5__ {int global; int * host_global; } ;
typedef TYPE_1__ script_ctx_t ;
typedef int jsval_t ;
struct TYPE_6__ {int (* proc ) (TYPE_1__*,int *,unsigned int,unsigned int,int *,int *) ;} ;
typedef TYPE_2__ NativeFunction ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef int FunctionInstance ;


 unsigned int DISPATCH_JSCRIPT_INTERNAL_MASK ;
 int set_disp (int *,int *) ;
 int set_jsdisp (int *,int ) ;
 int stub1 (TYPE_1__*,int *,unsigned int,unsigned int,int *,int *) ;
 int vdisp_release (int *) ;

__attribute__((used)) static HRESULT NativeFunction_call(script_ctx_t *ctx, FunctionInstance *func, IDispatch *this_disp, unsigned flags,
        unsigned argc, jsval_t *argv, jsval_t *r)
{
    NativeFunction *function = (NativeFunction*)func;
    vdisp_t vthis;
    HRESULT hres;

    if(this_disp)
        set_disp(&vthis, this_disp);
    else if(ctx->host_global)
        set_disp(&vthis, ctx->host_global);
    else
        set_jsdisp(&vthis, ctx->global);

    hres = function->proc(ctx, &vthis, flags & ~DISPATCH_JSCRIPT_INTERNAL_MASK, argc, argv, r);

    vdisp_release(&vthis);
    return hres;
}
