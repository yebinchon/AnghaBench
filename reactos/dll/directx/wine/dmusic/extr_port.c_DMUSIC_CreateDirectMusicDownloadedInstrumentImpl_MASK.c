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
struct TYPE_5__ {int ref; TYPE_2__ IDirectMusicDownloadedInstrument_iface; } ;
typedef  TYPE_1__ IDirectMusicDownloadedInstrumentImpl ;
typedef  TYPE_2__ IDirectMusicDownloadedInstrument ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DirectMusicDownloadedInstrument_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  S_OK ; 

__attribute__((used)) static HRESULT FUNC3(IDirectMusicDownloadedInstrument **instrument)
{
    IDirectMusicDownloadedInstrumentImpl *object;

    object = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(*object));
    if (!object)
    {
        *instrument = NULL;
        return E_OUTOFMEMORY;
    }

    object->IDirectMusicDownloadedInstrument_iface.lpVtbl = &DirectMusicDownloadedInstrument_Vtbl;
    object->ref = 1;

    *instrument = &object->IDirectMusicDownloadedInstrument_iface;
    FUNC0();

    return S_OK;
}