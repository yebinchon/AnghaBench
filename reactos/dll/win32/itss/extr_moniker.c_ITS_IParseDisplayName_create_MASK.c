#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_1__ IParseDisplayName_iface; } ;
typedef  TYPE_2__* LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_2__ ITS_IParseDisplayNameImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLASS_E_NOAGGREGATION ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  ITS_IParseDisplayNameImpl_Vtbl ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_2__*) ; 

HRESULT FUNC4(IUnknown *pUnkOuter, LPVOID *ppObj)
{
    ITS_IParseDisplayNameImpl *its;

    if( pUnkOuter )
        return CLASS_E_NOAGGREGATION;

    its = FUNC1( FUNC0(), 0, sizeof(ITS_IParseDisplayNameImpl) );
    its->IParseDisplayName_iface.lpVtbl = &ITS_IParseDisplayNameImpl_Vtbl;
    its->ref = 1;

    FUNC3("-> %p\n", its);
    *ppObj = its;

    FUNC2();
    return S_OK;
}