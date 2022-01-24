#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_6__ {int refs; int /*<<< orphan*/  fw_policy2_rules; TYPE_1__ INetFwPolicy2_iface; } ;
typedef  TYPE_2__ fw_policy2 ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC4 (char*,void*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fw_policy2_vtbl ; 

HRESULT FUNC6( IUnknown *outer, void **obj )
{
    fw_policy2 *fp;

    FUNC4("(%p,%p)\n", outer, obj);

    fp = FUNC2( FUNC1(), 0, sizeof(*fp) );
    if (!fp) return E_OUTOFMEMORY;

    fp->INetFwPolicy2_iface.lpVtbl = &fw_policy2_vtbl;
    fp->refs = 1;

    *obj = &fp->INetFwPolicy2_iface;

    if (FUNC0(FUNC5(&fp->fw_policy2_rules)))
    {
        FUNC3( FUNC1(), 0, fp );
        return E_OUTOFMEMORY;
    }

    FUNC4("returning iface %p\n", *obj);
    return S_OK;
}