
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef void* jsval_t ;
struct TYPE_19__ {TYPE_3__* builtin_info; int ctx; TYPE_6__* props; struct TYPE_19__* prototype; } ;
typedef TYPE_5__ jsdisp_t ;
struct TYPE_16__ {int getter; } ;
struct TYPE_18__ {int ref; int idx; TYPE_2__ accessor; void* val; TYPE_1__* p; } ;
struct TYPE_20__ {int type; int name; TYPE_4__ u; } ;
typedef TYPE_6__ dispex_prop_t ;
struct TYPE_17__ {int (* idx_get ) (TYPE_5__*,int ,void**) ;} ;
struct TYPE_15__ {int flags; int name; int * invoke; int (* getter ) (int ,TYPE_5__*,void**) ;} ;
typedef int HRESULT ;


 int DISPATCH_METHOD ;
 int ERR (char*,int) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;




 int PROP_PROTREF ;
 int S_OK ;
 int TRACE (char*,int ,...) ;
 int assert (int ) ;
 int create_builtin_function (int ,int *,int ,int *,int ,int *,TYPE_5__**) ;
 int debugstr_jsval (void*) ;
 int debugstr_w (int ) ;
 int jsdisp_addref (TYPE_5__*) ;
 int jsdisp_call_value (int ,int ,int ,int ,int *,void**) ;
 int jsval_copy (void*,void**) ;
 void* jsval_obj (TYPE_5__*) ;
 void* jsval_undefined () ;
 int stub1 (int ,TYPE_5__*,void**) ;
 int stub2 (TYPE_5__*,int ,void**) ;
 int to_disp (TYPE_5__*) ;

__attribute__((used)) static HRESULT prop_get(jsdisp_t *This, dispex_prop_t *prop, jsval_t *r)
{
    jsdisp_t *prop_obj = This;
    HRESULT hres;

    while(prop->type == PROP_PROTREF) {
        prop_obj = prop_obj->prototype;
        prop = prop_obj->props + prop->u.ref;
    }

    switch(prop->type) {
    case 130:
        if(prop->u.p->getter) {
            hres = prop->u.p->getter(This->ctx, This, r);
        }else {
            jsdisp_t *obj;

            assert(prop->u.p->invoke != ((void*)0));
            hres = create_builtin_function(This->ctx, prop->u.p->invoke, prop->u.p->name, ((void*)0),
                    prop->u.p->flags, ((void*)0), &obj);
            if(FAILED(hres))
                break;

            prop->type = 128;
            prop->u.val = jsval_obj(obj);

            jsdisp_addref(obj);
            *r = jsval_obj(obj);
        }
        break;
    case 128:
        hres = jsval_copy(prop->u.val, r);
        break;
    case 131:
        if(prop->u.accessor.getter) {
            hres = jsdisp_call_value(prop->u.accessor.getter, to_disp(This),
                                     DISPATCH_METHOD, 0, ((void*)0), r);
        }else {
            *r = jsval_undefined();
            hres = S_OK;
        }
        break;
    case 129:
        hres = prop_obj->builtin_info->idx_get(prop_obj, prop->u.idx, r);
        break;
    default:
        ERR("type %d\n", prop->type);
        return E_FAIL;
    }

    if(FAILED(hres)) {
        TRACE("fail %08x\n", hres);
        return hres;
    }

    TRACE("%s ret %s\n", debugstr_w(prop->name), debugstr_jsval(*r));
    return hres;
}
