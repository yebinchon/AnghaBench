#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  disp; int /*<<< orphan*/  dispex; int /*<<< orphan*/  jsdisp; } ;
struct TYPE_11__ {TYPE_1__ u; } ;
typedef  TYPE_2__ vdisp_t ;
struct TYPE_12__ {int /*<<< orphan*/  lcid; } ;
typedef  TYPE_3__ script_ctx_t ;
typedef  int /*<<< orphan*/  property_desc_t ;
typedef  int /*<<< orphan*/  jsval_t ;
typedef  int /*<<< orphan*/  jsstr_t ;
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DISPID ;
typedef  scalar_t__ BSTR ;

/* Variables and functions */
 scalar_t__ DISP_E_UNKNOWNNAME ; 
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_NULL ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  fdexNameCaseSensitive ; 
 scalar_t__ FUNC7 (TYPE_2__*) ; 
 scalar_t__ FUNC8 (TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 

__attribute__((used)) static HRESULT FUNC17(script_ctx_t *ctx, vdisp_t *jsthis, WORD flags, unsigned argc, jsval_t *argv,
        jsval_t *r)
{
    jsstr_t *name;
    DISPID id;
    BSTR bstr;
    HRESULT hres;

    FUNC6("\n");

    if(!argc) {
        if(r)
            *r = FUNC14(FALSE);
        return S_OK;
    }

    hres = FUNC16(ctx, argv[0], &name);
    if(FUNC0(hres))
        return hres;

    if(FUNC8(jsthis)) {
        property_desc_t prop_desc;
        const WCHAR *name_str;

        name_str = FUNC10(name);
        if(!name_str) {
            FUNC13(name);
            return E_OUTOFMEMORY;
        }

        hres = FUNC9(jsthis->u.jsdisp, name_str, TRUE, &prop_desc);
        FUNC13(name);
        if(FUNC0(hres) && hres != DISP_E_UNKNOWNNAME)
            return hres;

        if(r) *r = FUNC14(hres == S_OK);
        return S_OK;
    }


    bstr = FUNC4(NULL, FUNC12(name));
    if(bstr)
        FUNC11(name, bstr);
    FUNC13(name);
    if(!bstr)
        return E_OUTOFMEMORY;

    if(FUNC7(jsthis))
        hres = FUNC1(jsthis->u.dispex, bstr, FUNC15(ctx, fdexNameCaseSensitive), &id);
    else
        hres = FUNC2(jsthis->u.disp, &IID_NULL, &bstr, 1, ctx->lcid, &id);

    FUNC5(bstr);
    if(r)
        *r = FUNC14(FUNC3(hres));
    return S_OK;
}