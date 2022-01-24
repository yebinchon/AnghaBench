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
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  double DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NAN ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,double,int,int /*<<< orphan*/ *) ; 
 double FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*) ; 

__attribute__((used)) static HRESULT FUNC9(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *str;
    DWORD idx = 0;
    HRESULT hres;

    FUNC1("\n");

    hres = FUNC2(ctx, jsthis, &str);
    if(FUNC0(hres))
        return hres;

    if(argc > 0) {
        double d;

        hres = FUNC8(ctx, argv[0], &d);
        if(FUNC0(hres)) {
            FUNC6(str);
            return hres;
        }

        if(!FUNC3(d) || d < 0 || d >= FUNC5(str)) {
            FUNC6(str);
            if(r)
                *r = FUNC7(NAN);
            return S_OK;
        }

        idx = d;
    }

    if(r) {
        WCHAR c;
        FUNC4(str, idx, 1, &c);
        *r = FUNC7(c);
    }

    FUNC6(str);
    return S_OK;
}