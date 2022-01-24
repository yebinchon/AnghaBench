#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  script_ctx_t ;
struct TYPE_5__ {int mask; int flags; void* explicit_value; void* explicit_setter; void* explicit_getter; void* setter; void* getter; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ property_desc_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  JS_E_INVALID_WRITABLE_PROP_DESC ; 
 int /*<<< orphan*/  JS_E_PROP_DESC_MISMATCH ; 
 int PROPF_CONFIGURABLE ; 
 int PROPF_ENUMERABLE ; 
 int PROPF_WRITABLE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 void* TRUE ; 
 int /*<<< orphan*/  configurableW ; 
 int /*<<< orphan*/  enumerableW ; 
 int /*<<< orphan*/  getW ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  setW ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  valueW ; 
 int /*<<< orphan*/  writableW ; 

__attribute__((used)) static HRESULT FUNC15(script_ctx_t *ctx, jsdisp_t *attr_obj, property_desc_t *desc)
{
    DISPID id;
    jsval_t v;
    BOOL b;
    HRESULT hres;

    FUNC10(desc, 0, sizeof(*desc));
    desc->value = FUNC9();

    hres = FUNC6(attr_obj, enumerableW, 0, &id);
    if(FUNC2(hres)) {
        desc->mask |= PROPF_ENUMERABLE;
        hres = FUNC7(attr_obj, id, &v);
        if(FUNC0(hres))
            return hres;
        hres = FUNC13(v, &b);
        FUNC8(v);
        if(FUNC0(hres))
            return hres;
        if(b)
            desc->flags |= PROPF_ENUMERABLE;
    }else if(hres != DISP_E_UNKNOWNNAME) {
        return hres;
    }

    hres = FUNC6(attr_obj, configurableW, 0, &id);
    if(FUNC2(hres)) {
        desc->mask |= PROPF_CONFIGURABLE;
        hres = FUNC7(attr_obj, id, &v);
        if(FUNC0(hres))
            return hres;
        hres = FUNC13(v, &b);
        FUNC8(v);
        if(FUNC0(hres))
            return hres;
        if(b)
            desc->flags |= PROPF_CONFIGURABLE;
    }else if(hres != DISP_E_UNKNOWNNAME) {
        return hres;
    }

    hres = FUNC6(attr_obj, valueW, 0, &id);
    if(FUNC2(hres)) {
        hres = FUNC7(attr_obj, id, &desc->value);
        if(FUNC0(hres))
            return hres;
        desc->explicit_value = TRUE;
    }else if(hres != DISP_E_UNKNOWNNAME) {
        return hres;
    }

    hres = FUNC6(attr_obj, writableW, 0, &id);
    if(FUNC2(hres)) {
        desc->mask |= PROPF_WRITABLE;
        hres = FUNC7(attr_obj, id, &v);
        if(FUNC2(hres)) {
            hres = FUNC13(v, &b);
            FUNC8(v);
            if(FUNC2(hres) && b)
                desc->flags |= PROPF_WRITABLE;
        }
    }else if(hres == DISP_E_UNKNOWNNAME) {
        hres = S_OK;
    }
    if(FUNC0(hres)) {
        FUNC11(desc);
        return hres;
    }

    hres = FUNC6(attr_obj, getW, 0, &id);
    if(FUNC2(hres)) {
        desc->explicit_getter = TRUE;
        hres = FUNC7(attr_obj, id, &v);
        if(FUNC2(hres) && !FUNC5(v)) {
            if(!FUNC4(v)) {
                FUNC1("getter is not an object\n");
                FUNC8(v);
                hres = E_FAIL;
            }else {
                /* FIXME: Check IsCallable */
                desc->getter = FUNC14(FUNC3(v));
                if(!desc->getter)
                    FUNC1("getter is not JS object\n");
            }
        }
    }else if(hres == DISP_E_UNKNOWNNAME) {
        hres = S_OK;
    }
    if(FUNC0(hres)) {
        FUNC11(desc);
        return hres;
    }

    hres = FUNC6(attr_obj, setW, 0, &id);
    if(FUNC2(hres)) {
        desc->explicit_setter = TRUE;
        hres = FUNC7(attr_obj, id, &v);
        if(FUNC2(hres) && !FUNC5(v)) {
            if(!FUNC4(v)) {
                FUNC1("setter is not an object\n");
                FUNC8(v);
                hres = E_FAIL;
            }else {
                /* FIXME: Check IsCallable */
                desc->setter = FUNC14(FUNC3(v));
                if(!desc->setter)
                    FUNC1("setter is not JS object\n");
            }
        }
    }else if(hres == DISP_E_UNKNOWNNAME) {
        hres = S_OK;
    }
    if(FUNC0(hres)) {
        FUNC11(desc);
        return hres;
    }

    if(desc->explicit_getter || desc->explicit_setter) {
        if(desc->explicit_value)
            hres = FUNC12(ctx, JS_E_PROP_DESC_MISMATCH, NULL);
        else if(desc->mask & PROPF_WRITABLE)
            hres = FUNC12(ctx, JS_E_INVALID_WRITABLE_PROP_DESC, NULL);
    }

    if(FUNC0(hres))
        FUNC11(desc);
    return hres;
}