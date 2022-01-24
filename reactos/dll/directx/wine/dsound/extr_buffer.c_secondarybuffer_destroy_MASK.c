#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int dwFlags; } ;
struct TYPE_10__ {TYPE_1__ drvdesc; } ;
struct TYPE_9__ {scalar_t__ ref; struct TYPE_9__* pwfx; struct TYPE_9__* notifies; struct TYPE_9__* tmp_buffer; struct TYPE_9__* buffer; struct TYPE_9__* memory; int /*<<< orphan*/  entry; TYPE_6__* device; scalar_t__ hwbuf; int /*<<< orphan*/  lock; } ;
typedef  TYPE_2__ IDirectSoundBufferImpl ;

/* Variables and functions */
 int DSDDESC_USESYSTEMMEMORY ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(IDirectSoundBufferImpl *This)
{
    FUNC0(This->device, This);
    FUNC4(&This->lock);

    if (This->hwbuf)
        FUNC3(This->hwbuf);
    if (!This->hwbuf || (This->device->drvdesc.dwFlags & DSDDESC_USESYSTEMMEMORY)) {
        This->buffer->ref--;
        FUNC6(&This->entry);
        if (This->buffer->ref == 0) {
            FUNC2(FUNC1(), 0, This->buffer->memory);
            FUNC2(FUNC1(), 0, This->buffer);
        }
    }

    FUNC2(FUNC1(), 0, This->tmp_buffer);
    FUNC2(FUNC1(), 0, This->notifies);
    FUNC2(FUNC1(), 0, This->pwfx);
    FUNC2(FUNC1(), 0, This);

    FUNC5("(%p) released\n", This);
}