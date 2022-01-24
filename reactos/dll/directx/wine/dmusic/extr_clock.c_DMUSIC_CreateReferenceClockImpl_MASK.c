#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int dwSize; } ;
struct TYPE_7__ {int ref; TYPE_3__ IReferenceClock_iface; TYPE_1__ pClockInfo; scalar_t__ rtTime; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPUNKNOWN ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  TYPE_2__ IReferenceClockImpl ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  DMUS_CLOCKINFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  ReferenceClock_Vtbl ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

HRESULT FUNC7(LPCGUID riid, LPVOID* ret_iface, LPUNKNOWN unkouter)
{
    IReferenceClockImpl* clock;
    HRESULT hr;

    FUNC5("(%s, %p, %p)\n", FUNC6(riid), ret_iface, unkouter);

    clock = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(IReferenceClockImpl));
    if (!clock) {
        *ret_iface = NULL;
        return E_OUTOFMEMORY;
    }

    clock->IReferenceClock_iface.lpVtbl = &ReferenceClock_Vtbl;
    clock->ref = 1;
    clock->rtTime = 0;
    clock->pClockInfo.dwSize = sizeof (DMUS_CLOCKINFO);

    FUNC0();
    hr = FUNC3(&clock->IReferenceClock_iface, riid, ret_iface);
    FUNC4(&clock->IReferenceClock_iface);

    return hr;
}