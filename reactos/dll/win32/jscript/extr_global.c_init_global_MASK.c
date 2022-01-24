#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int version; scalar_t__ global; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  ActiveXObjectW ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INFINITY ; 
 int /*<<< orphan*/  InfinityW ; 
 int /*<<< orphan*/  JSGlobal_info ; 
 int /*<<< orphan*/  JSONW ; 
 int /*<<< orphan*/  MathW ; 
 int /*<<< orphan*/  NAN ; 
 int /*<<< orphan*/  NaNW ; 
 unsigned int PROPF_WRITABLE ; 
 int SCRIPTLANGUAGEVERSION_ES5 ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  undefinedW ; 

HRESULT FUNC12(script_ctx_t *ctx)
{
    unsigned const_flags = ctx->version >= SCRIPTLANGUAGEVERSION_ES5 ? 0 : PROPF_WRITABLE;
    jsdisp_t *math, *object_prototype, *constr;
    HRESULT hres;

    if(ctx->global)
        return S_OK;

    hres = FUNC2(ctx, &JSGlobal_info, NULL, &ctx->global);
    if(FUNC0(hres))
        return hres;

    hres = FUNC5(ctx, &object_prototype);
    if(FUNC0(hres))
        return hres;

    hres = FUNC6(ctx, object_prototype);
    FUNC8(object_prototype);
    if(FUNC0(hres))
        return hres;

    hres = FUNC4(ctx, &math);
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx->global, MathW, PROPF_WRITABLE, FUNC10(math));
    FUNC8(math);
    if(FUNC0(hres))
        return hres;

    if(ctx->version >= 2) {
        jsdisp_t *json;

        hres = FUNC3(ctx, &json);
        if(FUNC0(hres))
            return hres;

        hres = FUNC7(ctx->global, JSONW, PROPF_WRITABLE, FUNC10(json));
        FUNC8(json);
        if(FUNC0(hres))
            return hres;
    }

    hres = FUNC1(ctx, &constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx->global, ActiveXObjectW, PROPF_WRITABLE,
                                       FUNC10(constr));
    FUNC8(constr);
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx->global, undefinedW, const_flags, FUNC11());
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx->global, NaNW, const_flags, FUNC9(NAN));
    if(FUNC0(hres))
        return hres;

    hres = FUNC7(ctx->global, InfinityW, const_flags, FUNC9(INFINITY));
    return hres;
}