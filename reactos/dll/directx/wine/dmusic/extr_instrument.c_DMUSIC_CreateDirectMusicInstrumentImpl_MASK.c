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
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IDirectMusicInstrument_iface; } ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPUNKNOWN ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  TYPE_1__ IDirectMusicInstrumentImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DirectMusicInstrument_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

HRESULT FUNC5 (LPCGUID lpcGUID, LPVOID* ppobj, LPUNKNOWN pUnkOuter) {
	IDirectMusicInstrumentImpl* dminst;
        HRESULT hr;

	dminst = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(IDirectMusicInstrumentImpl));
	if (NULL == dminst) {
		*ppobj = NULL;
		return E_OUTOFMEMORY;
	}
	dminst->IDirectMusicInstrument_iface.lpVtbl = &DirectMusicInstrument_Vtbl;
        dminst->ref = 1;

        FUNC0();
        hr = FUNC3(&dminst->IDirectMusicInstrument_iface, lpcGUID,
                ppobj);
        FUNC4(&dminst->IDirectMusicInstrument_iface);

        return hr;
}