
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_17__ {TYPE_5__* dsb; int * lpVtbl; scalar_t__ ref; } ;
struct TYPE_14__ {double x; double y; double z; } ;
struct TYPE_13__ {double x; double y; double z; } ;
struct TYPE_12__ {double x; double y; double z; } ;
struct TYPE_15__ {int dwSize; int dwMode; int flMaxDistance; int flMinDistance; int lConeOutsideVolume; TYPE_3__ vConeOrientation; void* dwOutsideConeAngle; void* dwInsideConeAngle; TYPE_2__ vVelocity; TYPE_1__ vPosition; } ;
struct TYPE_16__ {int ds3db_need_recalc; TYPE_4__ ds3db_ds3db; } ;
typedef TYPE_5__ IDirectSoundBufferImpl ;
typedef TYPE_6__ IDirectSound3DBufferImpl ;
typedef int HRESULT ;
typedef int DS3DBUFFER ;


 int DS3DMODE_NORMAL ;
 void* DS3D_DEFAULTCONEANGLE ;
 int DS3D_DEFAULTCONEOUTSIDEVOLUME ;
 int DS3D_DEFAULTMAXDISTANCE ;
 int DS3D_DEFAULTMINDISTANCE ;
 int DSERR_OUTOFMEMORY ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_6__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_5__*,TYPE_6__**) ;
 int TRUE ;
 int WARN (char*) ;
 int ds3dbvt ;

HRESULT IDirectSound3DBufferImpl_Create(
 IDirectSoundBufferImpl *dsb,
 IDirectSound3DBufferImpl **pds3db)
{
 IDirectSound3DBufferImpl *ds3db;
 TRACE("(%p,%p)\n",dsb,pds3db);

 ds3db = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(*ds3db));

 if (ds3db == ((void*)0)) {
  WARN("out of memory\n");
  *pds3db = 0;
  return DSERR_OUTOFMEMORY;
 }

 ds3db->ref = 0;
 ds3db->dsb = dsb;
 ds3db->lpVtbl = &ds3dbvt;

 ds3db->dsb->ds3db_ds3db.dwSize = sizeof(DS3DBUFFER);
 ds3db->dsb->ds3db_ds3db.vPosition.x = 0.0;
 ds3db->dsb->ds3db_ds3db.vPosition.y = 0.0;
 ds3db->dsb->ds3db_ds3db.vPosition.z = 0.0;
 ds3db->dsb->ds3db_ds3db.vVelocity.x = 0.0;
 ds3db->dsb->ds3db_ds3db.vVelocity.y = 0.0;
 ds3db->dsb->ds3db_ds3db.vVelocity.z = 0.0;
 ds3db->dsb->ds3db_ds3db.dwInsideConeAngle = DS3D_DEFAULTCONEANGLE;
 ds3db->dsb->ds3db_ds3db.dwOutsideConeAngle = DS3D_DEFAULTCONEANGLE;
 ds3db->dsb->ds3db_ds3db.vConeOrientation.x = 0.0;
 ds3db->dsb->ds3db_ds3db.vConeOrientation.y = 0.0;
 ds3db->dsb->ds3db_ds3db.vConeOrientation.z = 0.0;
 ds3db->dsb->ds3db_ds3db.lConeOutsideVolume = DS3D_DEFAULTCONEOUTSIDEVOLUME;
 ds3db->dsb->ds3db_ds3db.flMinDistance = DS3D_DEFAULTMINDISTANCE;
 ds3db->dsb->ds3db_ds3db.flMaxDistance = DS3D_DEFAULTMAXDISTANCE;
 ds3db->dsb->ds3db_ds3db.dwMode = DS3DMODE_NORMAL;

 ds3db->dsb->ds3db_need_recalc = TRUE;

 *pds3db = ds3db;
 return S_OK;
}
