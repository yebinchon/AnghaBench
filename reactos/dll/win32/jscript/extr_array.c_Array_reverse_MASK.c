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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ HRESULT ;
typedef  int DWORD ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsdisp_t *jsthis;
    DWORD length, k, l;
    jsval_t v1, v2;
    HRESULT hres1, hres2;

    FUNC1("\n");

    hres1 = FUNC2(ctx, vthis, &jsthis, &length);
    if(FUNC0(hres1))
        return hres1;

    for(k=0; k<length/2; k++) {
        l = length-k-1;

        hres1 = FUNC5(jsthis, k, &v1);
        if(FUNC0(hres1) && hres1!=DISP_E_UNKNOWNNAME)
            return hres1;

        hres2 = FUNC5(jsthis, l, &v2);
        if(FUNC0(hres2) && hres2!=DISP_E_UNKNOWNNAME) {
            FUNC8(v1);
            return hres2;
        }

        if(hres1 == DISP_E_UNKNOWNNAME)
            hres1 = FUNC4(jsthis, l);
        else
            hres1 = FUNC6(jsthis, l, v1);

        if(FUNC0(hres1)) {
            FUNC8(v1);
            FUNC8(v2);
            return hres1;
        }

        if(hres2 == DISP_E_UNKNOWNNAME)
            hres2 = FUNC4(jsthis, k);
        else
            hres2 = FUNC6(jsthis, k, v2);

        if(FUNC0(hres2)) {
            FUNC8(v2);
            return hres2;
        }
    }

    if(r)
        *r = FUNC7(FUNC3(jsthis));
    return S_OK;
}