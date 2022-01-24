#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  void* jsval_t ;
struct TYPE_19__ {TYPE_3__* builtin_info; int /*<<< orphan*/  ctx; TYPE_6__* props; struct TYPE_19__* prototype; } ;
typedef  TYPE_5__ jsdisp_t ;
struct TYPE_16__ {int /*<<< orphan*/  getter; } ;
struct TYPE_18__ {int ref; int /*<<< orphan*/  idx; TYPE_2__ accessor; void* val; TYPE_1__* p; } ;
struct TYPE_20__ {int type; int /*<<< orphan*/  name; TYPE_4__ u; } ;
typedef  TYPE_6__ dispex_prop_t ;
struct TYPE_17__ {int /*<<< orphan*/  (* idx_get ) (TYPE_5__*,int /*<<< orphan*/ ,void**) ;} ;
struct TYPE_15__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  name; int /*<<< orphan*/ * invoke; int /*<<< orphan*/  (* getter ) (int /*<<< orphan*/ ,TYPE_5__*,void**) ;} ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DISPATCH_METHOD ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  E_FAIL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
#define  PROP_ACCESSOR 131 
#define  PROP_BUILTIN 130 
#define  PROP_IDX 129 
#define  PROP_JSVAL 128 
 int PROP_PROTREF ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC9 (void*,void**) ; 
 void* FUNC10 (TYPE_5__*) ; 
 void* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_5__*,void**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*) ; 

__attribute__((used)) static HRESULT FUNC15(jsdisp_t *This, dispex_prop_t *prop,  jsval_t *r)
{
    jsdisp_t *prop_obj = This;
    HRESULT hres;

    while(prop->type == PROP_PROTREF) {
        prop_obj = prop_obj->prototype;
        prop = prop_obj->props + prop->u.ref;
    }

    switch(prop->type) {
    case PROP_BUILTIN:
        if(prop->u.p->getter) {
            hres = prop->u.p->getter(This->ctx, This, r);
        }else {
            jsdisp_t *obj;

            FUNC3(prop->u.p->invoke != NULL);
            hres = FUNC4(This->ctx, prop->u.p->invoke, prop->u.p->name, NULL,
                    prop->u.p->flags, NULL, &obj);
            if(FUNC1(hres))
                break;

            prop->type = PROP_JSVAL;
            prop->u.val = FUNC10(obj);

            FUNC7(obj);
            *r = FUNC10(obj);
        }
        break;
    case PROP_JSVAL:
        hres = FUNC9(prop->u.val, r);
        break;
    case PROP_ACCESSOR:
        if(prop->u.accessor.getter) {
            hres = FUNC8(prop->u.accessor.getter, FUNC14(This),
                                     DISPATCH_METHOD, 0, NULL, r);
        }else {
            *r = FUNC11();
            hres = S_OK;
        }
        break;
    case PROP_IDX:
        hres = prop_obj->builtin_info->idx_get(prop_obj, prop->u.idx, r);
        break;
    default:
        FUNC0("type %d\n", prop->type);
        return E_FAIL;
    }

    if(FUNC1(hres)) {
        FUNC2("fail %08x\n", hres);
        return hres;
    }

    FUNC2("%s ret %s\n", FUNC6(prop->name), FUNC5(*r));
    return hres;
}