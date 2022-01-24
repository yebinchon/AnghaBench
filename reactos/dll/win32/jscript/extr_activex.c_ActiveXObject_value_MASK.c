#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vdisp_t ;
struct TYPE_6__ {int safeopt; } ;
typedef  TYPE_1__ script_ctx_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  scalar_t__ WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 scalar_t__ DISPATCH_CONSTRUCT ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  IID_IDispatch ; 
 int INTERFACESAFE_FOR_UNTRUSTED_DATA ; 
 int INTERFACE_USES_DISPEX ; 
 int INTERFACE_USES_SECURITY_MANAGER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  JS_E_CANNOT_CREATE_OBJ ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/  const**) ; 

__attribute__((used)) static HRESULT FUNC10(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t * progid_str;
    const WCHAR *progid;
    IDispatch *disp;
    IUnknown *obj;
    HRESULT hres;

    FUNC4("\n");

    if(flags != DISPATCH_CONSTRUCT) {
        FUNC1("unsupported flags %x\n", flags);
        return E_NOTIMPL;
    }

    if(ctx->safeopt != (INTERFACESAFE_FOR_UNTRUSTED_DATA|INTERFACE_USES_DISPEX|INTERFACE_USES_SECURITY_MANAGER)
        && ctx->safeopt != INTERFACE_USES_DISPEX) {
        FUNC1("Unsupported safeopt %x\n", ctx->safeopt);
        return E_NOTIMPL;
    }

    if(argc != 1) {
        FUNC1("unsupported argc %d\n", argc);
        return E_NOTIMPL;
    }

    hres = FUNC9(ctx, argv[0], &progid_str, &progid);
    if(FUNC0(hres))
        return hres;

    obj = FUNC5(ctx, progid);
    FUNC6(progid_str);
    if(!obj)
        return FUNC8(ctx, JS_E_CANNOT_CREATE_OBJ, NULL);

    hres = FUNC2(obj, &IID_IDispatch, (void**)&disp);
    FUNC3(obj);
    if(FUNC0(hres)) {
        FUNC1("Object does not support IDispatch\n");
        return E_NOTIMPL;
    }

    *r = FUNC7(disp);
    return S_OK;
}