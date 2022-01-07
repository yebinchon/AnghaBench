
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {double x; double y; double z; } ;
struct TYPE_15__ {double x; double y; double z; } ;
struct TYPE_14__ {double x; double y; double z; } ;
struct TYPE_13__ {double x; double y; double z; } ;
struct TYPE_17__ {int dwSize; int flDopplerFactor; int flRolloffFactor; int flDistanceFactor; TYPE_4__ vOrientTop; TYPE_3__ vOrientFront; TYPE_2__ vVelocity; TYPE_1__ vPosition; } ;
struct TYPE_19__ {int ds3dl_need_recalc; TYPE_5__ ds3dl; } ;
struct TYPE_18__ {TYPE_7__* device; int * lpVtbl; scalar_t__ ref; } ;
typedef TYPE_6__ IDirectSound3DListenerImpl ;
typedef int HRESULT ;
typedef TYPE_7__ DirectSoundDevice ;
typedef int DS3DLISTENER ;


 int DS3D_DEFAULTDISTANCEFACTOR ;
 int DS3D_DEFAULTDOPPLERFACTOR ;
 int DS3D_DEFAULTROLLOFFFACTOR ;
 int DSERR_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_6__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_7__*,TYPE_6__**) ;
 int TRUE ;
 int WARN (char*) ;
 int ds3dlvt ;

HRESULT IDirectSound3DListenerImpl_Create(
 DirectSoundDevice * device,
 IDirectSound3DListenerImpl ** ppdsl)
{
 IDirectSound3DListenerImpl *pdsl;
 TRACE("(%p,%p)\n",device,ppdsl);

 pdsl = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(*pdsl));

 if (pdsl == ((void*)0)) {
  WARN("out of memory\n");
  *ppdsl = 0;
  return DSERR_OUTOFMEMORY;
 }

 pdsl->ref = 0;
 pdsl->lpVtbl = &ds3dlvt;

 pdsl->device = device;

 pdsl->device->ds3dl.dwSize = sizeof(DS3DLISTENER);
 pdsl->device->ds3dl.vPosition.x = 0.0;
 pdsl->device->ds3dl.vPosition.y = 0.0;
 pdsl->device->ds3dl.vPosition.z = 0.0;
 pdsl->device->ds3dl.vVelocity.x = 0.0;
 pdsl->device->ds3dl.vVelocity.y = 0.0;
 pdsl->device->ds3dl.vVelocity.z = 0.0;
 pdsl->device->ds3dl.vOrientFront.x = 0.0;
 pdsl->device->ds3dl.vOrientFront.y = 0.0;
 pdsl->device->ds3dl.vOrientFront.z = 1.0;
 pdsl->device->ds3dl.vOrientTop.x = 0.0;
 pdsl->device->ds3dl.vOrientTop.y = 1.0;
 pdsl->device->ds3dl.vOrientTop.z = 0.0;
 pdsl->device->ds3dl.flDistanceFactor = DS3D_DEFAULTDISTANCEFACTOR;
 pdsl->device->ds3dl.flRolloffFactor = DS3D_DEFAULTROLLOFFFACTOR;
 pdsl->device->ds3dl.flDopplerFactor = DS3D_DEFAULTDOPPLERFACTOR;

 pdsl->device->ds3dl_need_recalc = TRUE;

 *ppdsl = pdsl;
 return S_OK;
}
