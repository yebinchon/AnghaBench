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
struct TYPE_7__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int refs; TYPE_2__ INetFwAuthorizedApplication_iface; int /*<<< orphan*/ * filename; } ;
typedef  TYPE_1__ fw_app ;
typedef  TYPE_2__* LPVOID ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_2__*,...) ; 
 int /*<<< orphan*/  fw_app_vtbl ; 

HRESULT FUNC3( IUnknown *pUnkOuter, LPVOID *ppObj )
{
    fw_app *fa;

    FUNC2("(%p,%p)\n", pUnkOuter, ppObj);

    fa = FUNC1( FUNC0(), 0, sizeof(*fa) );
    if (!fa) return E_OUTOFMEMORY;

    fa->INetFwAuthorizedApplication_iface.lpVtbl = &fw_app_vtbl;
    fa->refs = 1;
    fa->filename = NULL;

    *ppObj = &fa->INetFwAuthorizedApplication_iface;

    FUNC2("returning iface %p\n", *ppObj);
    return S_OK;
}