#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int /*<<< orphan*/  driver; } ;
struct TYPE_18__ {int ref; int numIfaces; struct TYPE_18__* pwfx; TYPE_1__* buffer; int /*<<< orphan*/  entry; struct TYPE_18__* tmp_buffer; int /*<<< orphan*/  lock; int /*<<< orphan*/  buflen; int /*<<< orphan*/ * iks; int /*<<< orphan*/ * ds3db; TYPE_3__* device; scalar_t__ nrofnotifies; int /*<<< orphan*/ * notifies; int /*<<< orphan*/ * notify; scalar_t__ sec_mixpos; scalar_t__ buf_mixpos; int /*<<< orphan*/  state; scalar_t__ hwbuf; } ;
struct TYPE_17__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  buffers; } ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  TYPE_2__ IDirectSoundBufferImpl ;
typedef  scalar_t__ HRESULT ;
typedef  TYPE_3__ DirectSoundDevice ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,TYPE_2__*,int) ; 
 scalar_t__ DSERR_OUTOFMEMORY ; 
 TYPE_2__* FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_2__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATE_STOPPED ; 
 int /*<<< orphan*/  FUNC12 (char*,...) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

HRESULT FUNC16(
    DirectSoundDevice *device,
    IDirectSoundBufferImpl **ppdsb,
    IDirectSoundBufferImpl *pdsb)
{
    IDirectSoundBufferImpl *dsb;
    HRESULT hres = DS_OK;
    FUNC12("(%p,%p,%p)\n", device, ppdsb, pdsb);

    dsb = FUNC7(FUNC6(),0,sizeof(*dsb));
    if (dsb == NULL) {
        FUNC13("out of memory\n");
        *ppdsb = NULL;
        return DSERR_OUTOFMEMORY;
    }
    FUNC0(dsb, pdsb, sizeof(*dsb));

    dsb->pwfx = FUNC1(pdsb->pwfx);
    if (dsb->pwfx == NULL) {
        FUNC8(FUNC6(),0,dsb);
        *ppdsb = NULL;
        return DSERR_OUTOFMEMORY;
    }

    if (pdsb->hwbuf) {
        FUNC12("duplicating hardware buffer\n");

        hres = FUNC9(device->driver, pdsb->hwbuf,
                                              (LPVOID *)&dsb->hwbuf);
        if (FUNC5(hres)) {
            FUNC13("IDsDriver_DuplicateSoundBuffer failed (%08x)\n", hres);
            FUNC8(FUNC6(),0,dsb->pwfx);
            FUNC8(FUNC6(),0,dsb);
            *ppdsb = NULL;
            return hres;
        }
    }

    dsb->buffer->ref++;
    FUNC14(&dsb->buffer->buffers, &dsb->entry);
    dsb->ref = 1;
    dsb->numIfaces = 1;
    dsb->state = STATE_STOPPED;
    dsb->buf_mixpos = dsb->sec_mixpos = 0;
    dsb->notify = NULL;
    dsb->notifies = NULL;
    dsb->nrofnotifies = 0;
    dsb->device = device;
    dsb->ds3db = NULL;
    dsb->iks = NULL; /* FIXME? */
    dsb->tmp_buffer = NULL;
    FUNC3(dsb);
    FUNC2(dsb, 0, dsb->buflen, FALSE);

    FUNC11(&dsb->lock);

    /* register buffer */
    hres = FUNC4(device, dsb);
    if (hres != DS_OK) {
        FUNC10(&dsb->lock);
        FUNC8(FUNC6(),0,dsb->tmp_buffer);
        FUNC15(&dsb->entry);
        dsb->buffer->ref--;
        FUNC8(FUNC6(),0,dsb->pwfx);
        FUNC8(FUNC6(),0,dsb);
        dsb = NULL;
    }

    *ppdsb = dsb;
    return hres;
}