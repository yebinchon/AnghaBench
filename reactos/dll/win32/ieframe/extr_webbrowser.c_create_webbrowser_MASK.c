#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_8__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_12__ {int ref; int version; TYPE_8__ IWebBrowser2_iface; int /*<<< orphan*/  doc_host; int /*<<< orphan*/  hlink_frame; void* tool_bar; void* status_bar; void* address_bar; void* menu_bar; void* visible; TYPE_1__ IServiceProvider_iface; } ;
typedef  TYPE_2__ WebBrowser ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DocHostContainerVtbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_8__*,int /*<<< orphan*/ ,void**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_8__*) ; 
 int /*<<< orphan*/  ServiceProviderVtbl ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**,int) ; 
 void* VARIANT_TRUE ; 
 int /*<<< orphan*/  WebBrowser2Vtbl ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static HRESULT FUNC12(int version, IUnknown *outer, REFIID riid, void **ppv)
{
    WebBrowser *ret;
    HRESULT hres;

    FUNC4("(%p %s %p) version=%d\n", outer, FUNC9(riid), ppv, version);

    ret = FUNC10(sizeof(WebBrowser));

    ret->IWebBrowser2_iface.lpVtbl = &WebBrowser2Vtbl;
    ret->IServiceProvider_iface.lpVtbl = &ServiceProviderVtbl;
    ret->ref = 1;
    ret->version = version;

    FUNC0(&ret->doc_host, &ret->IWebBrowser2_iface, &DocHostContainerVtbl);

    ret->visible = VARIANT_TRUE;
    ret->menu_bar = VARIANT_TRUE;
    ret->address_bar = VARIANT_TRUE;
    ret->status_bar = VARIANT_TRUE;
    ret->tool_bar = VARIANT_TRUE;

    FUNC6(ret);
    FUNC8(ret);
    FUNC7(ret);
    FUNC5(ret);

    FUNC1(&ret->hlink_frame, (IUnknown*)&ret->IWebBrowser2_iface, &ret->doc_host);

    FUNC11();

    hres = FUNC2(&ret->IWebBrowser2_iface, riid, ppv);

    FUNC3(&ret->IWebBrowser2_iface);
    return hres;
}