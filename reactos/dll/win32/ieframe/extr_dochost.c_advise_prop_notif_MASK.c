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
struct TYPE_3__ {scalar_t__ is_prop_notif; int /*<<< orphan*/  prop_notif_cookie; int /*<<< orphan*/  IPropertyNotifySink_iface; int /*<<< orphan*/  document; } ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IConnectionPointContainer ;
typedef  int /*<<< orphan*/  IConnectionPoint ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_1__ DocHost ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IConnectionPointContainer ; 
 int /*<<< orphan*/  IID_IPropertyNotifySink ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(DocHost *This, BOOL set)
{
    IConnectionPointContainer *cp_container;
    IConnectionPoint *cp;
    HRESULT hres;

    hres = FUNC6(This->document, &IID_IConnectionPointContainer, (void**)&cp_container);
    if(FUNC0(hres))
        return;

    hres = FUNC1(cp_container, &IID_IPropertyNotifySink, &cp);
    FUNC2(cp_container);
    if(FUNC0(hres))
        return;

    if(set)
        hres = FUNC3(cp, (IUnknown*)&This->IPropertyNotifySink_iface, &This->prop_notif_cookie);
    else
        hres = FUNC5(cp, This->prop_notif_cookie);
    FUNC4(cp);

    if(FUNC7(hres))
        This->is_prop_notif = set;
}