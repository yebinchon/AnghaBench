#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  WORD ;
struct TYPE_4__ {int /*<<< orphan*/  atend; scalar_t__ enumvar; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ EnumeratorInstance ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  JS_E_ENUMERATOR_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC7(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    EnumeratorInstance *This;
    HRESULT hres = S_OK;

    FUNC2("\n");

    if (!(This = FUNC3(jsthis)))
        return FUNC6(ctx, JS_E_ENUMERATOR_EXPECTED, NULL);

    if (This->enumvar)
    {
        hres = FUNC1(This->enumvar);
        if (FUNC0(hres))
            return hres;

        This->atend = FALSE;
        hres = FUNC4(This);
        if(FUNC0(hres))
            return hres;
    }

    if (r)
        *r = FUNC5();
    return S_OK;
}