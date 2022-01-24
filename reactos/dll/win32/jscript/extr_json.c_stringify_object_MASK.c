#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {size_t buf_len; unsigned int stack_top; scalar_t__* gap; } ;
typedef  TYPE_1__ stringify_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
struct TYPE_16__ {int /*<<< orphan*/  IDispatchEx_iface; } ;
typedef  TYPE_2__ jsdisp_t ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  int /*<<< orphan*/  BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  DISPID_STARTENUM ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  fdexEnumDefault ; 
 scalar_t__ FUNC8 (TYPE_1__*,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static HRESULT FUNC17(stringify_ctx_t *ctx, jsdisp_t *obj)
{
    DISPID dispid = DISPID_STARTENUM;
    jsval_t val = FUNC13();
    unsigned prop_cnt = 0, i;
    size_t stepback;
    BSTR prop_name;
    HRESULT hres;

    if(FUNC8(ctx, obj)) {
        FUNC1("Found a cycle\n");
        return E_FAIL;
    }

    if(!FUNC16(ctx, obj))
        return E_OUTOFMEMORY;

    if(!FUNC6(ctx, '{'))
        return E_OUTOFMEMORY;

    while((hres = FUNC3(&obj->IDispatchEx_iface, fdexEnumDefault, dispid, &dispid)) == S_OK) {
        FUNC12(val);
        hres = FUNC10(obj, dispid, &val);
        if(FUNC0(hres))
            return hres;

        if(FUNC9(val))
            continue;

        stepback = ctx->buf_len;

        if(prop_cnt && !FUNC6(ctx, ',')) {
            hres = E_OUTOFMEMORY;
            break;
        }

        if(*ctx->gap) {
            if(!FUNC6(ctx, '\n')) {
                hres = E_OUTOFMEMORY;
                break;
            }

            for(i=0; i < ctx->stack_top; i++) {
                if(!FUNC7(ctx, ctx->gap)) {
                    hres = E_OUTOFMEMORY;
                    break;
                }
            }
        }

        hres = FUNC2(&obj->IDispatchEx_iface, dispid, &prop_name);
        if(FUNC0(hres))
            break;

        hres = FUNC11(ctx, prop_name, FUNC5(prop_name));
        FUNC4(prop_name);
        if(FUNC0(hres))
            break;

        if(!FUNC6(ctx, ':') || (*ctx->gap && !FUNC6(ctx, ' '))) {
            hres = E_OUTOFMEMORY;
            break;
        }

        hres = FUNC14(ctx, val);
        if(FUNC0(hres))
            break;

        if(hres == S_FALSE) {
            ctx->buf_len = stepback;
            continue;
        }

        prop_cnt++;
    }
    FUNC12(val);
    if(FUNC0(hres))
        return hres;

    if(prop_cnt && *ctx->gap) {
        if(!FUNC6(ctx, '\n'))
            return E_OUTOFMEMORY;

        for(i=1; i < ctx->stack_top; i++) {
            if(!FUNC7(ctx, ctx->gap)) {
                hres = E_OUTOFMEMORY;
                break;
            }
        }
    }

    if(!FUNC6(ctx, '}'))
        return E_OUTOFMEMORY;

    FUNC15(ctx);
    return S_OK;
}