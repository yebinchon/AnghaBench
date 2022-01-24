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
struct TYPE_6__ {int ref; int /*<<< orphan*/  entry; int /*<<< orphan*/  doc_host; int /*<<< orphan*/  IWebBrowser2_iface; int /*<<< orphan*/  hlink_frame; } ;
typedef  TYPE_1__ InternetExplorer ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DocHostContainerVtbl ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 
 int /*<<< orphan*/  ie_list ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  obj_cnt ; 

__attribute__((used)) static HRESULT FUNC7(InternetExplorer **ret_obj)
{
    InternetExplorer *ret;

    ret = FUNC5(sizeof(InternetExplorer));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->ref = 1;

    FUNC0(&ret->doc_host, &ret->IWebBrowser2_iface, &DocHostContainerVtbl);

    FUNC3(ret);

    FUNC1(&ret->hlink_frame, (IUnknown*)&ret->IWebBrowser2_iface, &ret->doc_host);

    FUNC4(ret);

    FUNC2(&obj_cnt);
    FUNC6(&ie_list, &ret->entry);
    *ret_obj = ret;
    return S_OK;
}