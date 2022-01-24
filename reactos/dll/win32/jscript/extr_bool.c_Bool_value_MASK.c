#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int WORD ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  INVOKE_FUNC 128 
 int /*<<< orphan*/  JS_E_FUNCTION_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC3(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    FUNC1("\n");

    switch(flags) {
    case INVOKE_FUNC:
        return FUNC2(ctx, JS_E_FUNCTION_EXPECTED, NULL);
    default:
        FUNC0("unimplemented flags %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;

}