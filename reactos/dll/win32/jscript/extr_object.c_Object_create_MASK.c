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
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC15(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags,
                             unsigned argc, jsval_t *argv, jsval_t *r)
{
    jsdisp_t *proto = NULL, *obj;
    HRESULT hres;

    if(!argc || (!FUNC8(argv[0]) && !FUNC7(argv[0]))) {
        FUNC1("Invalid arg\n");
        return E_INVALIDARG;
    }

    FUNC3("(%s)\n", FUNC5(argv[0]));

    if(argc && FUNC8(argv[0])) {
        if(FUNC6(argv[0]))
            proto = FUNC14(FUNC6(argv[0]));
        if(!proto) {
            FUNC1("Non-JS prototype\n");
            return E_NOTIMPL;
        }
    }else if(!FUNC7(argv[0])) {
        FUNC1("Invalid arg %s\n", FUNC5(argc ? argv[0] : FUNC13()));
        return E_INVALIDARG;
    }

    hres = FUNC4(ctx, NULL, proto, &obj);
    if(FUNC0(hres))
        return hres;

    if(argc >= 2 && !FUNC9(argv[1]))
        hres = FUNC10(ctx, obj, argv[1]);

    if(FUNC2(hres) && r)
        *r = FUNC12(obj);
    else
        FUNC11(obj);
    return hres;
}