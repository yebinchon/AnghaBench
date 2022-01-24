#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ctx; } ;
typedef  TYPE_1__ stringify_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;

/* Variables and functions */
 scalar_t__ E_NOTIMPL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  JSCLASS_ARRAY ; 
#define  JSV_BOOL 134 
#define  JSV_NULL 133 
#define  JSV_NUMBER 132 
#define  JSV_OBJECT 131 
#define  JSV_STRING 130 
#define  JSV_UNDEFINED 129 
#define  JSV_VARIANT 128 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (double,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  falseW ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 double FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (double) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC17 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int FUNC22 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nullW ; 
 scalar_t__ FUNC24 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  toJSONW ; 
 int /*<<< orphan*/  trueW ; 

__attribute__((used)) static HRESULT FUNC26(stringify_ctx_t *ctx, jsval_t val)
{
    jsval_t value;
    HRESULT hres;

    if(FUNC14(val) && FUNC8(val)) {
        jsdisp_t *obj;
        DISPID id;

        obj = FUNC10(FUNC8(val));
        if(!obj)
            return S_FALSE;

        hres = FUNC15(obj, toJSONW, 0, &id);
        FUNC16(obj);
        if(hres == S_OK)
            FUNC1("Use toJSON.\n");
    }

    /* FIXME: Support replacer replacer. */

    hres = FUNC23(ctx->ctx, val, &value);
    if(FUNC0(hres))
        return hres;

    switch(FUNC22(value)) {
    case JSV_NULL:
        if(!FUNC2(ctx, nullW))
            hres = E_OUTOFMEMORY;
        break;
    case JSV_BOOL:
        if(!FUNC2(ctx, FUNC6(value) ? trueW : falseW))
            hres = E_OUTOFMEMORY;
        break;
    case JSV_STRING: {
        jsstr_t *str = FUNC9(value);
        const WCHAR *ptr = FUNC18(str);
        if(ptr)
            hres = FUNC17(ctx, ptr, FUNC19(str));
        else
            hres = E_OUTOFMEMORY;
        break;
    }
    case JSV_NUMBER: {
        double n = FUNC7(value);
        if(FUNC13(n)) {
            const WCHAR *ptr;
            jsstr_t *str;

            /* FIXME: Optimize. There is no need for jsstr_t here. */
            hres = FUNC5(n, &str);
            if(FUNC0(hres))
                break;

            ptr = FUNC18(str);
            FUNC4(ptr != NULL);
            hres = ptr && !FUNC3(ctx, ptr, FUNC19(str)) ? E_OUTOFMEMORY : S_OK;
            FUNC20(str);
        }else {
            if(!FUNC2(ctx, nullW))
                hres = E_OUTOFMEMORY;
        }
        break;
    }
    case JSV_OBJECT: {
        jsdisp_t *obj;

        obj = FUNC10(FUNC8(value));
        if(!obj) {
            hres = S_FALSE;
            break;
        }

        if(!FUNC11(obj))
            hres = FUNC12(obj, JSCLASS_ARRAY) ? FUNC24(ctx, obj) : FUNC25(ctx, obj);
        else
            hres = S_FALSE;

        FUNC16(obj);
        break;
    }
    case JSV_UNDEFINED:
        hres = S_FALSE;
        break;
    case JSV_VARIANT:
        FUNC1("VARIANT\n");
        hres = E_NOTIMPL;
        break;
    }

    FUNC21(value);
    return hres;
}