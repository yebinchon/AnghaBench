#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IKsPropertySet_iface; } ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  TYPE_1__ IKsPropertySet ;
typedef  TYPE_2__ IKsPrivatePropertySetImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_NOINTERFACE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  IID_IKsPropertySet ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ikspvt ; 

HRESULT FUNC5(
    REFIID riid,
    IKsPropertySet **piks)
{
    IKsPrivatePropertySetImpl *iks;
    FUNC3("(%s, %p)\n", FUNC4(riid), piks);

    if (!FUNC2(riid, &IID_IUnknown) &&
        !FUNC2(riid, &IID_IKsPropertySet)) {
        *piks = 0;
        return E_NOINTERFACE;
    }

    iks = FUNC1(FUNC0(),0,sizeof(*iks));
    iks->ref = 1;
    iks->IKsPropertySet_iface.lpVtbl = &ikspvt;

    *piks = &iks->IKsPropertySet_iface;
    return S_OK;
}