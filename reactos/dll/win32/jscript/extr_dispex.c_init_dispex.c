
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int script_ctx_t ;
struct TYPE_14__ {int * lpVtbl; } ;
struct TYPE_17__ {int ref; int buf_size; int prop_cnt; int * ctx; TYPE_10__* props; struct TYPE_17__* prototype; TYPE_5__ const* builtin_info; TYPE_1__ IDispatchEx_iface; } ;
typedef TYPE_4__ jsdisp_t ;
typedef int dispex_prop_t ;
struct TYPE_16__ {scalar_t__ getter; scalar_t__ invoke; } ;
struct TYPE_18__ {TYPE_3__ value_prop; } ;
typedef TYPE_5__ builtin_info_t ;
struct TYPE_15__ {TYPE_3__* p; } ;
struct TYPE_13__ {int type; TYPE_2__ u; } ;
typedef int HRESULT ;


 int DispatchExVtbl ;
 int E_OUTOFMEMORY ;
 int PROP_BUILTIN ;
 int PROP_DELETED ;
 int S_OK ;
 int TRACE (char*,TYPE_4__*,TYPE_4__*) ;
 TYPE_10__* heap_alloc_zero (int) ;
 int jsdisp_addref (TYPE_4__*) ;
 int script_addref (int *) ;

HRESULT init_dispex(jsdisp_t *dispex, script_ctx_t *ctx, const builtin_info_t *builtin_info, jsdisp_t *prototype)
{
    TRACE("%p (%p)\n", dispex, prototype);

    dispex->IDispatchEx_iface.lpVtbl = &DispatchExVtbl;
    dispex->ref = 1;
    dispex->builtin_info = builtin_info;

    dispex->props = heap_alloc_zero(sizeof(dispex_prop_t)*(dispex->buf_size=4));
    if(!dispex->props)
        return E_OUTOFMEMORY;

    dispex->prototype = prototype;
    if(prototype)
        jsdisp_addref(prototype);

    dispex->prop_cnt = 1;
    if(builtin_info->value_prop.invoke || builtin_info->value_prop.getter) {
        dispex->props[0].type = PROP_BUILTIN;
        dispex->props[0].u.p = &builtin_info->value_prop;
    }else {
        dispex->props[0].type = PROP_DELETED;
    }

    script_addref(ctx);
    dispex->ctx = ctx;

    return S_OK;
}
