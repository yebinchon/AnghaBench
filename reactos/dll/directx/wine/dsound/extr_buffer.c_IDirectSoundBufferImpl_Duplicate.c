
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_19__ {int driver; } ;
struct TYPE_18__ {int ref; int numIfaces; struct TYPE_18__* pwfx; TYPE_1__* buffer; int entry; struct TYPE_18__* tmp_buffer; int lock; int buflen; int * iks; int * ds3db; TYPE_3__* device; scalar_t__ nrofnotifies; int * notifies; int * notify; scalar_t__ sec_mixpos; scalar_t__ buf_mixpos; int state; scalar_t__ hwbuf; } ;
struct TYPE_17__ {int ref; int buffers; } ;
typedef int LPVOID ;
typedef TYPE_2__ IDirectSoundBufferImpl ;
typedef scalar_t__ HRESULT ;
typedef TYPE_3__ DirectSoundDevice ;


 int CopyMemory (TYPE_2__*,TYPE_2__*,int) ;
 scalar_t__ DSERR_OUTOFMEMORY ;
 TYPE_2__* DSOUND_CopyFormat (TYPE_2__*) ;
 int DSOUND_MixToTemporary (TYPE_2__*,int ,int ,int ) ;
 int DSOUND_RecalcFormat (TYPE_2__*) ;
 scalar_t__ DS_OK ;
 scalar_t__ DirectSoundDevice_AddBuffer (TYPE_3__*,TYPE_2__*) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int GetProcessHeap () ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_2__*) ;
 scalar_t__ IDsDriver_DuplicateSoundBuffer (int ,scalar_t__,int *) ;
 int RtlDeleteResource (int *) ;
 int RtlInitializeResource (int *) ;
 int STATE_STOPPED ;
 int TRACE (char*,...) ;
 int WARN (char*,...) ;
 int list_add_head (int *,int *) ;
 int list_remove (int *) ;

HRESULT IDirectSoundBufferImpl_Duplicate(
    DirectSoundDevice *device,
    IDirectSoundBufferImpl **ppdsb,
    IDirectSoundBufferImpl *pdsb)
{
    IDirectSoundBufferImpl *dsb;
    HRESULT hres = DS_OK;
    TRACE("(%p,%p,%p)\n", device, ppdsb, pdsb);

    dsb = HeapAlloc(GetProcessHeap(),0,sizeof(*dsb));
    if (dsb == ((void*)0)) {
        WARN("out of memory\n");
        *ppdsb = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }
    CopyMemory(dsb, pdsb, sizeof(*dsb));

    dsb->pwfx = DSOUND_CopyFormat(pdsb->pwfx);
    if (dsb->pwfx == ((void*)0)) {
        HeapFree(GetProcessHeap(),0,dsb);
        *ppdsb = ((void*)0);
        return DSERR_OUTOFMEMORY;
    }

    if (pdsb->hwbuf) {
        TRACE("duplicating hardware buffer\n");

        hres = IDsDriver_DuplicateSoundBuffer(device->driver, pdsb->hwbuf,
                                              (LPVOID *)&dsb->hwbuf);
        if (FAILED(hres)) {
            WARN("IDsDriver_DuplicateSoundBuffer failed (%08x)\n", hres);
            HeapFree(GetProcessHeap(),0,dsb->pwfx);
            HeapFree(GetProcessHeap(),0,dsb);
            *ppdsb = ((void*)0);
            return hres;
        }
    }

    dsb->buffer->ref++;
    list_add_head(&dsb->buffer->buffers, &dsb->entry);
    dsb->ref = 1;
    dsb->numIfaces = 1;
    dsb->state = STATE_STOPPED;
    dsb->buf_mixpos = dsb->sec_mixpos = 0;
    dsb->notify = ((void*)0);
    dsb->notifies = ((void*)0);
    dsb->nrofnotifies = 0;
    dsb->device = device;
    dsb->ds3db = ((void*)0);
    dsb->iks = ((void*)0);
    dsb->tmp_buffer = ((void*)0);
    DSOUND_RecalcFormat(dsb);
    DSOUND_MixToTemporary(dsb, 0, dsb->buflen, FALSE);

    RtlInitializeResource(&dsb->lock);


    hres = DirectSoundDevice_AddBuffer(device, dsb);
    if (hres != DS_OK) {
        RtlDeleteResource(&dsb->lock);
        HeapFree(GetProcessHeap(),0,dsb->tmp_buffer);
        list_remove(&dsb->entry);
        dsb->buffer->ref--;
        HeapFree(GetProcessHeap(),0,dsb->pwfx);
        HeapFree(GetProcessHeap(),0,dsb);
        dsb = ((void*)0);
    }

    *ppdsb = dsb;
    return hres;
}
