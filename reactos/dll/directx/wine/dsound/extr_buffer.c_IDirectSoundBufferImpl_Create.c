
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_9__ ;
typedef struct TYPE_39__ TYPE_8__ ;
typedef struct TYPE_38__ TYPE_7__ ;
typedef struct TYPE_37__ TYPE_6__ ;
typedef struct TYPE_36__ TYPE_5__ ;
typedef struct TYPE_35__ TYPE_4__ ;
typedef struct TYPE_34__ TYPE_3__ ;
typedef struct TYPE_33__ TYPE_2__ ;
typedef struct TYPE_32__ TYPE_26__ ;
typedef struct TYPE_31__ TYPE_1__ ;
typedef struct TYPE_30__ TYPE_12__ ;
typedef struct TYPE_29__ TYPE_11__ ;
typedef struct TYPE_28__ TYPE_10__ ;


struct TYPE_40__ {int nBlockAlign; int nSamplesPerSec; int nChannels; int wBitsPerSample; } ;
struct TYPE_39__ {int * lpVtbl; } ;
struct TYPE_37__ {double x; double y; double z; } ;
struct TYPE_36__ {double x; double y; double z; } ;
struct TYPE_35__ {double x; double y; double z; } ;
struct TYPE_38__ {int dwSize; int dwMode; int flMaxDistance; int flMinDistance; int lConeOutsideVolume; TYPE_6__ vConeOrientation; void* dwOutsideConeAngle; void* dwInsideConeAngle; TYPE_5__ vVelocity; TYPE_4__ vPosition; } ;
struct TYPE_34__ {int nSamplesPerSec; } ;
struct TYPE_33__ {int dwFlags; } ;
struct TYPE_32__ {int dwFlags; } ;
struct TYPE_31__ {int dwFlags; } ;
struct TYPE_30__ {TYPE_3__* pwfx; TYPE_2__ drvdesc; scalar_t__ driver; TYPE_1__ drvcaps; } ;
struct TYPE_29__ {int ref; int numIfaces; int buflen; int freq; int freqAdjust; int nAvgBytesPerSec; struct TYPE_29__* pwfx; int lock; struct TYPE_29__* buffer; struct TYPE_29__* memory; int volpan; int ds3db_need_recalc; TYPE_7__ ds3db_ds3db; TYPE_26__ dsbd; int state; scalar_t__ sec_mixpos; scalar_t__ buf_mixpos; int entry; int buffers; int hwbuf; scalar_t__ hwnotify; scalar_t__ nrofnotifies; int * notifies; int * notify; int * iks; TYPE_8__ IDirectSoundBuffer8_iface; TYPE_12__* device; } ;
struct TYPE_28__ {scalar_t__ dwBufferBytes; int dwFlags; TYPE_9__* lpwfxFormat; int dwSize; } ;
typedef TYPE_9__* LPWAVEFORMATEX ;
typedef int LPVOID ;
typedef TYPE_10__* LPCDSBUFFERDESC ;
typedef TYPE_11__ IDirectSoundBufferImpl ;
typedef scalar_t__ HRESULT ;
typedef TYPE_12__ DirectSoundDevice ;
typedef int DWORD64 ;
typedef int DWORD ;
typedef int DS3DBUFFER ;


 int CopyMemory (TYPE_26__*,TYPE_10__*,int ) ;
 int DS3DMODE_NORMAL ;
 void* DS3D_DEFAULTCONEANGLE ;
 int DS3D_DEFAULTCONEOUTSIDEVOLUME ;
 int DS3D_DEFAULTMAXDISTANCE ;
 int DS3D_DEFAULTMINDISTANCE ;
 int DSBCAPS_CTRL3D ;
 int DSBCAPS_LOCHARDWARE ;
 int DSBCAPS_PRIMARYBUFFER ;
 scalar_t__ DSBSIZE_MAX ;
 scalar_t__ DSBSIZE_MIN ;
 int DSCAPS_SECONDARY16BIT ;
 int DSCAPS_SECONDARY8BIT ;
 int DSCAPS_SECONDARYMONO ;
 int DSCAPS_SECONDARYSTEREO ;
 int DSDDESC_USESYSTEMMEMORY ;
 scalar_t__ DSERR_BADFORMAT ;
 scalar_t__ DSERR_GENERIC ;
 scalar_t__ DSERR_INVALIDPARAM ;
 scalar_t__ DSERR_OUTOFMEMORY ;
 int DSOUND_Calc3DBuffer (TYPE_11__*) ;
 TYPE_11__* DSOUND_CopyFormat (TYPE_9__*) ;
 int DSOUND_FREQSHIFT ;
 int DSOUND_RecalcFormat (TYPE_11__*) ;
 int DSOUND_RecalcVolPan (int *) ;
 scalar_t__ DS_OK ;
 scalar_t__ DirectSoundDevice_AddBuffer (TYPE_12__*,TYPE_11__*) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 int FillMemory (TYPE_11__*,int,int) ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 void* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,TYPE_11__*) ;
 scalar_t__ IDsDriver_CreateSoundBuffer (scalar_t__,TYPE_9__*,int,int ,int*,TYPE_11__**,int *) ;
 int RtlDeleteResource (int *) ;
 int RtlInitializeResource (int *) ;
 int STATE_STOPPED ;
 int TRACE (char*,...) ;
 int WARN (char*,...) ;
 int dsbvt ;
 int list_add_head (int *,int *) ;
 int list_init (int *) ;

HRESULT IDirectSoundBufferImpl_Create(
 DirectSoundDevice * device,
 IDirectSoundBufferImpl **pdsb,
 LPCDSBUFFERDESC dsbd)
{
 IDirectSoundBufferImpl *dsb;
 LPWAVEFORMATEX wfex = dsbd->lpwfxFormat;
 HRESULT err = DS_OK;
 DWORD capf = 0;
 int use_hw;
 TRACE("(%p,%p,%p)\n",device,pdsb,dsbd);

 if (dsbd->dwBufferBytes < DSBSIZE_MIN || dsbd->dwBufferBytes > DSBSIZE_MAX) {
  WARN("invalid parameter: dsbd->dwBufferBytes = %d\n", dsbd->dwBufferBytes);
  *pdsb = ((void*)0);
  return DSERR_INVALIDPARAM;
 }

 dsb = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(*dsb));

 if (dsb == 0) {
  WARN("out of memory\n");
  *pdsb = ((void*)0);
  return DSERR_OUTOFMEMORY;
 }

 TRACE("Created buffer at %p\n", dsb);

        dsb->ref = 1;
        dsb->numIfaces = 1;
 dsb->device = device;
        dsb->IDirectSoundBuffer8_iface.lpVtbl = &dsbvt;
 dsb->iks = ((void*)0);


 CopyMemory(&dsb->dsbd, dsbd, dsbd->dwSize);

 dsb->pwfx = DSOUND_CopyFormat(wfex);
 if (dsb->pwfx == ((void*)0)) {
  HeapFree(GetProcessHeap(),0,dsb);
  *pdsb = ((void*)0);
  return DSERR_OUTOFMEMORY;
 }

 if (dsbd->dwBufferBytes % dsbd->lpwfxFormat->nBlockAlign)
  dsb->buflen = dsbd->dwBufferBytes +
   (dsbd->lpwfxFormat->nBlockAlign -
   (dsbd->dwBufferBytes % dsbd->lpwfxFormat->nBlockAlign));
 else
  dsb->buflen = dsbd->dwBufferBytes;

 dsb->freq = dsbd->lpwfxFormat->nSamplesPerSec;
 dsb->notify = ((void*)0);
 dsb->notifies = ((void*)0);
 dsb->nrofnotifies = 0;
 dsb->hwnotify = 0;


 if (wfex->nChannels==2) capf |= DSCAPS_SECONDARYSTEREO;
 else capf |= DSCAPS_SECONDARYMONO;
 if (wfex->wBitsPerSample==16) capf |= DSCAPS_SECONDARY16BIT;
 else capf |= DSCAPS_SECONDARY8BIT;

 use_hw = !!(dsbd->dwFlags & DSBCAPS_LOCHARDWARE);
 TRACE("use_hw = %d, capf = 0x%08x, device->drvcaps.dwFlags = 0x%08x\n", use_hw, capf, device->drvcaps.dwFlags);
 if (use_hw && ((device->drvcaps.dwFlags & capf) != capf || !device->driver))
 {
  if (device->driver)
   WARN("Format not supported for hardware buffer\n");
  HeapFree(GetProcessHeap(),0,dsb->pwfx);
  HeapFree(GetProcessHeap(),0,dsb);
  *pdsb = ((void*)0);
  if ((device->drvcaps.dwFlags & capf) != capf)
   return DSERR_BADFORMAT;
  return DSERR_GENERIC;
 }







 dsb->buffer = HeapAlloc(GetProcessHeap(),0,sizeof(*(dsb->buffer)));
 if (dsb->buffer == ((void*)0)) {
  WARN("out of memory\n");
  HeapFree(GetProcessHeap(),0,dsb->pwfx);
  HeapFree(GetProcessHeap(),0,dsb);
  *pdsb = ((void*)0);
  return DSERR_OUTOFMEMORY;
 }


 if ((device->drvdesc.dwFlags & DSDDESC_USESYSTEMMEMORY) || !use_hw) {
  dsb->buffer->memory = HeapAlloc(GetProcessHeap(),0,dsb->buflen);
  if (dsb->buffer->memory == ((void*)0)) {
   WARN("out of memory\n");
   HeapFree(GetProcessHeap(),0,dsb->pwfx);
   HeapFree(GetProcessHeap(),0,dsb->buffer);
   HeapFree(GetProcessHeap(),0,dsb);
   *pdsb = ((void*)0);
   return DSERR_OUTOFMEMORY;
  }
 }


 if (use_hw) {
  err = IDsDriver_CreateSoundBuffer(device->driver,wfex,dsbd->dwFlags,0,
        &(dsb->buflen),&(dsb->buffer->memory),
        (LPVOID*)&(dsb->hwbuf));
  if (FAILED(err))
  {
   WARN("Failed to create hardware secondary buffer: %08x\n", err);
   if (device->drvdesc.dwFlags & DSDDESC_USESYSTEMMEMORY)
    HeapFree(GetProcessHeap(),0,dsb->buffer->memory);
   HeapFree(GetProcessHeap(),0,dsb->buffer);
   HeapFree(GetProcessHeap(),0,dsb->pwfx);
   HeapFree(GetProcessHeap(),0,dsb);
   *pdsb = ((void*)0);
   return DSERR_GENERIC;
  }
 }

 dsb->buffer->ref = 1;
 list_init(&dsb->buffer->buffers);
 list_add_head(&dsb->buffer->buffers, &dsb->entry);
 FillMemory(dsb->buffer->memory, dsb->buflen, dsbd->lpwfxFormat->wBitsPerSample == 8 ? 128 : 0);



 dsb->buf_mixpos = dsb->sec_mixpos = 0;
 dsb->state = STATE_STOPPED;

 dsb->freqAdjust = ((DWORD64)dsb->freq << DSOUND_FREQSHIFT) / device->pwfx->nSamplesPerSec;
 dsb->nAvgBytesPerSec = dsb->freq *
  dsbd->lpwfxFormat->nBlockAlign;


 DSOUND_RecalcFormat(dsb);

 if (dsb->dsbd.dwFlags & DSBCAPS_CTRL3D) {
  dsb->ds3db_ds3db.dwSize = sizeof(DS3DBUFFER);
  dsb->ds3db_ds3db.vPosition.x = 0.0;
  dsb->ds3db_ds3db.vPosition.y = 0.0;
  dsb->ds3db_ds3db.vPosition.z = 0.0;
  dsb->ds3db_ds3db.vVelocity.x = 0.0;
  dsb->ds3db_ds3db.vVelocity.y = 0.0;
  dsb->ds3db_ds3db.vVelocity.z = 0.0;
  dsb->ds3db_ds3db.dwInsideConeAngle = DS3D_DEFAULTCONEANGLE;
  dsb->ds3db_ds3db.dwOutsideConeAngle = DS3D_DEFAULTCONEANGLE;
  dsb->ds3db_ds3db.vConeOrientation.x = 0.0;
  dsb->ds3db_ds3db.vConeOrientation.y = 0.0;
  dsb->ds3db_ds3db.vConeOrientation.z = 0.0;
  dsb->ds3db_ds3db.lConeOutsideVolume = DS3D_DEFAULTCONEOUTSIDEVOLUME;
  dsb->ds3db_ds3db.flMinDistance = DS3D_DEFAULTMINDISTANCE;
  dsb->ds3db_ds3db.flMaxDistance = DS3D_DEFAULTMAXDISTANCE;
  dsb->ds3db_ds3db.dwMode = DS3DMODE_NORMAL;

  dsb->ds3db_need_recalc = FALSE;
  DSOUND_Calc3DBuffer(dsb);
 } else
  DSOUND_RecalcVolPan(&(dsb->volpan));

 RtlInitializeResource(&dsb->lock);


 if (!(dsbd->dwFlags & DSBCAPS_PRIMARYBUFFER)) {
  err = DirectSoundDevice_AddBuffer(device, dsb);
  if (err != DS_OK) {
   HeapFree(GetProcessHeap(),0,dsb->buffer->memory);
   HeapFree(GetProcessHeap(),0,dsb->buffer);
   RtlDeleteResource(&dsb->lock);
   HeapFree(GetProcessHeap(),0,dsb->pwfx);
   HeapFree(GetProcessHeap(),0,dsb);
   dsb = ((void*)0);
  }
 }

 *pdsb = dsb;
 return err;
}
