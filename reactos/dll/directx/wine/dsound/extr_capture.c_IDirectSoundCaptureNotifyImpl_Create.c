
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* notify; } ;
struct TYPE_8__ {TYPE_2__* dscb; int * lpVtbl; scalar_t__ ref; } ;
typedef int LPDIRECTSOUNDCAPTUREBUFFER ;
typedef TYPE_1__ IDirectSoundCaptureNotifyImpl ;
typedef TYPE_2__ IDirectSoundCaptureBufferImpl ;
typedef int HRESULT ;


 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int IDirectSoundCaptureBuffer_AddRef (int ) ;
 int TRACE (char*,TYPE_2__*,TYPE_1__**) ;
 int WARN (char*) ;
 int dscnvt ;

__attribute__((used)) static HRESULT IDirectSoundCaptureNotifyImpl_Create(
    IDirectSoundCaptureBufferImpl *dscb,
    IDirectSoundCaptureNotifyImpl **pdscn)
{
    IDirectSoundCaptureNotifyImpl * dscn;
    TRACE("(%p,%p)\n",dscb,pdscn);

    dscn = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(*dscn));

    if (dscn == ((void*)0)) {
 WARN("out of memory\n");
 return DSERR_OUTOFMEMORY;
    }

    dscn->ref = 0;
    dscn->lpVtbl = &dscnvt;
    dscn->dscb = dscb;
    dscb->notify = dscn;
    IDirectSoundCaptureBuffer_AddRef((LPDIRECTSOUNDCAPTUREBUFFER)dscb);

    *pdscn = dscn;
    return DS_OK;
}
