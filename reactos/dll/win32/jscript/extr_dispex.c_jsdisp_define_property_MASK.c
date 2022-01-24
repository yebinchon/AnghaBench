#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int flags; int mask; int /*<<< orphan*/ * setter; scalar_t__ explicit_setter; int /*<<< orphan*/ * getter; scalar_t__ explicit_getter; int /*<<< orphan*/  value; scalar_t__ explicit_value; } ;
typedef  TYPE_3__ property_desc_t ;
struct TYPE_15__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_4__ jsdisp_t ;
struct TYPE_12__ {int /*<<< orphan*/ * setter; int /*<<< orphan*/ * getter; } ;
struct TYPE_13__ {TYPE_1__ accessor; void* val; } ;
struct TYPE_16__ {scalar_t__ type; int flags; TYPE_2__ u; } ;
typedef  TYPE_5__ dispex_prop_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  JS_E_NONCONFIGURABLE_REDEFINED ; 
 int /*<<< orphan*/  JS_E_NONWRITABLE_MODIFIED ; 
 int PROPF_CONFIGURABLE ; 
 int PROPF_ENUMERABLE ; 
 int PROPF_WRITABLE ; 
 scalar_t__ PROP_ACCESSOR ; 
 scalar_t__ PROP_DELETED ; 
 scalar_t__ PROP_JSVAL ; 
 scalar_t__ PROP_PROTREF ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,...) ; 
 TYPE_5__* FUNC3 (TYPE_4__*,int /*<<< orphan*/  const*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_5__**) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 void* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 

HRESULT FUNC15(jsdisp_t *obj, const WCHAR *name, property_desc_t *desc)
{
    dispex_prop_t *prop;
    HRESULT hres;

    hres = FUNC6(obj, FUNC13(name), name, &prop);
    if(FUNC0(hres))
        return hres;

    if(!prop && !(prop = FUNC3(obj, name, PROP_DELETED, 0)))
       return E_OUTOFMEMORY;

    if(prop->type == PROP_DELETED || prop->type == PROP_PROTREF) {
        prop->flags = desc->flags;
        if(desc->explicit_getter || desc->explicit_setter) {
            prop->type = PROP_ACCESSOR;
            prop->u.accessor.getter = desc->getter ? FUNC7(desc->getter) : NULL;
            prop->u.accessor.setter = desc->setter ? FUNC7(desc->setter) : NULL;
            FUNC2("%s = accessor { get: %p set: %p }\n", FUNC5(name),
                  *prop->u.accessor.getter, prop->u.accessor.setter);
        }else {
            prop->type = PROP_JSVAL;
            if(desc->explicit_value) {
                hres = FUNC9(desc->value, &prop->u.val);
                if(FUNC0(hres))
                    return hres;
            }else {
                prop->u.val = FUNC12();
            }
            FUNC2("%s = %s\n", FUNC5(name), FUNC4(prop->u.val));
        }
        return S_OK;
    }

    FUNC2("existing prop %s prop flags %x desc flags %x desc mask %x\n", FUNC5(name),
          prop->flags, desc->flags, desc->mask);

    if(!(prop->flags & PROPF_CONFIGURABLE)) {
        if(((desc->mask & PROPF_CONFIGURABLE) && (desc->flags & PROPF_CONFIGURABLE))
           || ((desc->mask & PROPF_ENUMERABLE)
               && ((desc->flags & PROPF_ENUMERABLE) != (prop->flags & PROPF_ENUMERABLE))))
            return FUNC14(obj->ctx, JS_E_NONCONFIGURABLE_REDEFINED, name);
    }

    if(desc->explicit_value || (desc->mask & PROPF_WRITABLE)) {
        if(prop->type == PROP_ACCESSOR) {
            if(!(prop->flags & PROPF_CONFIGURABLE))
                return FUNC14(obj->ctx, JS_E_NONCONFIGURABLE_REDEFINED, name);
            if(prop->u.accessor.getter)
                FUNC8(prop->u.accessor.getter);
            if(prop->u.accessor.setter)
                FUNC8(prop->u.accessor.setter);

            prop->type = PROP_JSVAL;
            hres = FUNC9(desc->value, &prop->u.val);
            if(FUNC0(hres)) {
                prop->u.val = FUNC12();
                return hres;
            }
        }else {
            if(!(prop->flags & PROPF_CONFIGURABLE) && !(prop->flags & PROPF_WRITABLE)) {
                if((desc->mask & PROPF_WRITABLE) && (desc->flags & PROPF_WRITABLE))
                    return FUNC14(obj->ctx, JS_E_NONWRITABLE_MODIFIED, name);
                if(desc->explicit_value) {
                    if(prop->type == PROP_JSVAL) {
                        BOOL eq;
                        hres = FUNC11(desc->value, prop->u.val, &eq);
                        if(FUNC0(hres))
                            return hres;
                        if(!eq)
                            return FUNC14(obj->ctx, JS_E_NONWRITABLE_MODIFIED, name);
                    }else {
                        FUNC1("redefinition of property type %d\n", prop->type);
                    }
                }
            }
            if(desc->explicit_value) {
                if(prop->type == PROP_JSVAL)
                    FUNC10(prop->u.val);
                else
                    prop->type = PROP_JSVAL;
                hres = FUNC9(desc->value, &prop->u.val);
                if(FUNC0(hres)) {
                    prop->u.val = FUNC12();
                    return hres;
                }
            }
        }
    }else if(desc->explicit_getter || desc->explicit_setter) {
        if(prop->type != PROP_ACCESSOR) {
            if(!(prop->flags & PROPF_CONFIGURABLE))
                return FUNC14(obj->ctx, JS_E_NONCONFIGURABLE_REDEFINED, name);
            if(prop->type == PROP_JSVAL)
                FUNC10(prop->u.val);
            prop->type = PROP_ACCESSOR;
            prop->u.accessor.getter = prop->u.accessor.setter = NULL;
        }else if(!(prop->flags & PROPF_CONFIGURABLE)) {
            if((desc->explicit_getter && desc->getter != prop->u.accessor.getter)
               || (desc->explicit_setter && desc->setter != prop->u.accessor.setter))
                return FUNC14(obj->ctx, JS_E_NONCONFIGURABLE_REDEFINED, name);
        }

        if(desc->explicit_getter) {
            if(prop->u.accessor.getter) {
                FUNC8(prop->u.accessor.getter);
                prop->u.accessor.getter = NULL;
            }
            if(desc->getter)
                prop->u.accessor.getter = FUNC7(desc->getter);
        }
        if(desc->explicit_setter) {
            if(prop->u.accessor.setter) {
                FUNC8(prop->u.accessor.setter);
                prop->u.accessor.setter = NULL;
            }
            if(desc->setter)
                prop->u.accessor.setter = FUNC7(desc->setter);
        }
    }

    prop->flags = (prop->flags & ~desc->mask) | (desc->flags & desc->mask);
    return S_OK;
}