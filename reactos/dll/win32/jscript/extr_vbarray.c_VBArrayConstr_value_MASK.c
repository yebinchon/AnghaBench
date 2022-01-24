#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
typedef  int /*<<< orphan*/  script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int WORD ;
struct TYPE_3__ {int /*<<< orphan*/  dispex; int /*<<< orphan*/  safearray; } ;
typedef  TYPE_1__ VBArrayInstance ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
#define  DISPATCH_CONSTRUCT 129 
#define  DISPATCH_METHOD 128 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  JS_E_VBARRAY_EXPECTED ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int VT_ARRAY ; 
 int VT_VARIANT ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC13(script_ctx_t *ctx, vdisp_t *vthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    VBArrayInstance *vbarray;
    HRESULT hres;

    FUNC3("\n");

    switch(flags) {
    case DISPATCH_METHOD:
        if(argc<1 || !FUNC8(argv[0]) || FUNC5(FUNC7(argv[0])) != (VT_ARRAY|VT_VARIANT))
            return FUNC12(ctx, JS_E_VBARRAY_EXPECTED, NULL);

        return FUNC10(argv[0], r);

    case DISPATCH_CONSTRUCT:
        if(argc<1 || !FUNC8(argv[0]) || FUNC5(FUNC7(argv[0])) != (VT_ARRAY|VT_VARIANT))
            return FUNC12(ctx, JS_E_VBARRAY_EXPECTED, NULL);

        hres = FUNC6(ctx, NULL, &vbarray);
        if(FUNC0(hres))
            return hres;

        hres = FUNC2(FUNC4(FUNC7(argv[0])), &vbarray->safearray);
        if(FUNC0(hres)) {
            FUNC9(&vbarray->dispex);
            return hres;
        }

        *r = FUNC11(&vbarray->dispex);
        break;

    default:
        FUNC1("unimplemented flags: %x\n", flags);
        return E_NOTIMPL;
    }

    return S_OK;
}