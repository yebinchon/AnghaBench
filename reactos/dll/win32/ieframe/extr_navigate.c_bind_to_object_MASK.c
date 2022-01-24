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
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  IOleClientSite_iface; } ;
typedef  int /*<<< orphan*/  LPOLESTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IMoniker ;
typedef  int /*<<< orphan*/  IBindStatusCallback ;
typedef  int /*<<< orphan*/  IBindCtx ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DocHost ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ SZ_HTML_CLIENTSITE_OBJECTPARAM ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC13(DocHost *This, IMoniker *mon, LPCWSTR url, IBindCtx *bindctx,
                              IBindStatusCallback *callback)
{
    IUnknown *unk = NULL;
    WCHAR *display_name;
    HRESULT hres;

    if(mon) {
        FUNC4(mon);
    }else {
        hres = FUNC10(url, &mon);
        if(FUNC1(hres))
            return hres;
    }

    hres = FUNC6(mon, 0, NULL, &display_name);
    if(FUNC1(hres)) {
        FUNC2("GetDisplayName failed: %08x\n", hres);
        FUNC7(mon);
        return hres;
    }

    hres = FUNC11(This, display_name);
    FUNC0(display_name);
    if(FUNC1(hres)) {
        FUNC7(mon);
        return hres;
    }

    FUNC3(bindctx, (LPOLESTR)SZ_HTML_CLIENTSITE_OBJECTPARAM,
                                 (IUnknown*)&This->IOleClientSite_iface);

    hres = FUNC5(mon, bindctx, NULL, &IID_IUnknown, (void**)&unk);
    if(FUNC9(hres)) {
        hres = S_OK;
        if(unk)
            FUNC8(unk);
    }else if(FUNC12(url)) {
        hres = S_OK;
    }else {
        FUNC2("BindToObject failed: %08x\n", hres);
    }

    FUNC7(mon);
    return S_OK;
}