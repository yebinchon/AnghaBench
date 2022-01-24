#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_11__ {int ref; int size; TYPE_1__ IDirectMusicBuffer_iface; void* data; int /*<<< orphan*/  format; } ;
struct TYPE_10__ {int cbBuffer; int /*<<< orphan*/  guidBufferFormat; } ;
typedef  TYPE_1__* LPVOID ;
typedef  TYPE_2__* LPDMUS_BUFFERDESC ;
typedef  TYPE_3__ IDirectMusicBufferImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  DirectMusicBuffer_Vtbl ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  GUID_NULL ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  HEAP_ZERO_MEMORY ; 
 void* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KSDATAFORMAT_SUBTYPE_MIDI ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*,TYPE_1__**) ; 

HRESULT FUNC6(LPDMUS_BUFFERDESC desc, LPVOID* ret_iface)
{
    IDirectMusicBufferImpl* dmbuffer;

    FUNC5("(%p, %p)\n", desc, ret_iface);

    *ret_iface = NULL;

    dmbuffer = FUNC2(FUNC1(), HEAP_ZERO_MEMORY, sizeof(IDirectMusicBufferImpl));
    if (!dmbuffer)
        return E_OUTOFMEMORY;

    dmbuffer->IDirectMusicBuffer_iface.lpVtbl = &DirectMusicBuffer_Vtbl;
    dmbuffer->ref = 1;

    if (FUNC4(&desc->guidBufferFormat, &GUID_NULL))
        dmbuffer->format = KSDATAFORMAT_SUBTYPE_MIDI;
    else
        dmbuffer->format = desc->guidBufferFormat;
    dmbuffer->size = (desc->cbBuffer + 3) & ~3; /* Buffer size must be multiple of 4 bytes */

    dmbuffer->data = FUNC2(FUNC1(), 0, dmbuffer->size);
    if (!dmbuffer->data) {
        FUNC3(FUNC1(), 0, dmbuffer);
        return E_OUTOFMEMORY;
    }

    FUNC0();
    *ret_iface = &dmbuffer->IDirectMusicBuffer_iface;

    return S_OK;
}