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
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_IActiveScriptSite ; 
 int /*<<< orphan*/  IID_IActiveScriptSiteWindow ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,void**,...) ; 
 int /*<<< orphan*/  script_site ; 
 int /*<<< orphan*/  script_site_window ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static HRESULT FUNC4(REFIID riid, void **ppv)
{
    if(FUNC1(riid, &IID_IUnknown)) {
        FUNC2("(IID_IUnknown %p)\n", ppv);
        *ppv = &script_site;
    }else if(FUNC1(riid, &IID_IActiveScriptSite)) {
        FUNC2("(IID_IActiveScriptSite %p)\n", ppv);
        *ppv = &script_site;
    }else if(FUNC1(riid, &IID_IActiveScriptSiteWindow)) {
        FUNC2("(IID_IActiveScriptSiteWindow %p)\n", ppv);
        *ppv = &script_site_window;
    }else {
        *ppv = NULL;
        FUNC2("(%s %p)\n", FUNC3(riid), ppv);
        return E_NOINTERFACE;
    }

    FUNC0((IUnknown*)*ppv);
    return S_OK;
}