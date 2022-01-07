
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int wic ;
struct TYPE_8__ {int wChannels; int dwFormats; int szPname; } ;
typedef TYPE_1__ WAVEINCAPSA ;
typedef int UINT ;
struct TYPE_11__ {int dwSize; int dwChannels; int dwFormats; int dwFlags; } ;
struct TYPE_10__ {int dwFlags; unsigned int dnDevNode; int szDrvname; } ;
struct TYPE_9__ {TYPE_5__ drvcaps; TYPE_4__ drvdesc; int * driver; int guid; } ;
typedef int * LPCGUID ;
typedef scalar_t__ HRESULT ;
typedef int GUID ;
typedef TYPE_2__ DirectSoundCaptureDevice ;
typedef int DWORD_PTR ;
typedef scalar_t__ BOOLEAN ;


 int DRV_QUERYDSOUNDIFACE ;
 int DSCCAPS_EMULDRIVER ;
 int DSDDESC_DOMMSYSTEMOPEN ;
 int DSDDESC_DOMMSYSTEMSETFORMAT ;
 int DSDEVID_DefaultCapture ;
 scalar_t__ DSERR_ALLOCATED ;
 scalar_t__ DSERR_INVALIDPARAM ;
 scalar_t__ DSERR_NODRIVER ;
 scalar_t__ DSERR_UNSUPPORTED ;
 scalar_t__* DSOUND_capture ;
 int * DSOUND_capture_guids ;
 scalar_t__ DS_HW_ACCEL_EMULATION ;
 scalar_t__ DS_OK ;
 scalar_t__ DirectSoundCaptureDevice_Create (TYPE_2__**) ;
 scalar_t__ FALSE ;
 int GUID_NULL ;
 scalar_t__ GetDeviceID (int *,int *) ;
 scalar_t__ IDsCaptureDriver_GetCaps (int *,TYPE_5__*) ;
 scalar_t__ IDsCaptureDriver_GetDriverDesc (int *,TYPE_4__*) ;
 scalar_t__ IDsCaptureDriver_Open (int *) ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int UlongToHandle (unsigned int) ;
 int WARN (char*,...) ;
 int debugstr_guid (int *) ;
 scalar_t__ ds_hw_accel ;
 int lstrcpynA (int ,int ,int) ;
 scalar_t__ mmErr (int ) ;
 int waveInGetDevCapsA (int ,TYPE_1__*,int) ;
 unsigned int waveInGetNumDevs () ;
 int waveInMessage (int ,int ,int ,int ) ;

__attribute__((used)) static HRESULT DirectSoundCaptureDevice_Initialize(
    DirectSoundCaptureDevice ** ppDevice,
    LPCGUID lpcGUID)
{
    HRESULT err = DSERR_INVALIDPARAM;
    unsigned wid, widn;
    BOOLEAN found = FALSE;
    GUID devGUID;
    DirectSoundCaptureDevice *device = *ppDevice;
    TRACE("(%p, %s)\n", ppDevice, debugstr_guid(lpcGUID));


    if ( !lpcGUID || IsEqualGUID(lpcGUID, &GUID_NULL) )
 lpcGUID = &DSDEVID_DefaultCapture;

    if (GetDeviceID(lpcGUID, &devGUID) != DS_OK) {
        WARN("invalid parameter: lpcGUID\n");
        return DSERR_INVALIDPARAM;
    }

    widn = waveInGetNumDevs();
    if (!widn) {
 WARN("no audio devices found\n");
 return DSERR_NODRIVER;
    }


    for (wid=0; wid<widn; wid++) {
 if (IsEqualGUID( &devGUID, &DSOUND_capture_guids[wid]) ) {
     found = TRUE;
     break;
 }
    }

    if (found == FALSE) {
 WARN("No device found matching given ID!\n");
 return DSERR_NODRIVER;
    }

    if (DSOUND_capture[wid]) {
        WARN("already in use\n");
        return DSERR_ALLOCATED;
    }

    err = DirectSoundCaptureDevice_Create(&(device));
    if (err != DS_OK) {
        WARN("DirectSoundCaptureDevice_Create failed\n");
        return err;
    }

    *ppDevice = device;
    device->guid = devGUID;


    device->driver = ((void*)0);
    if (ds_hw_accel != DS_HW_ACCEL_EMULATION)
    {
        err = mmErr(waveInMessage(UlongToHandle(wid),DRV_QUERYDSOUNDIFACE,(DWORD_PTR)&device->driver,0));
        if ( (err != DS_OK) && (err != DSERR_UNSUPPORTED) ) {
            WARN("waveInMessage failed; err=%x\n",err);
            return err;
        }
    }
    err = DS_OK;


    if (device->driver) {
        TRACE("using DirectSound driver\n");
        err = IDsCaptureDriver_GetDriverDesc(device->driver, &(device->drvdesc));
 if (err != DS_OK) {
     WARN("IDsCaptureDriver_GetDriverDesc failed\n");
     return err;
 }
    } else {
        TRACE("using WINMM\n");

        device->drvdesc.dwFlags = DSDDESC_DOMMSYSTEMOPEN |
            DSDDESC_DOMMSYSTEMSETFORMAT;
    }

    device->drvdesc.dnDevNode = wid;


    if (device->driver && (err == DS_OK))
        err = IDsCaptureDriver_Open(device->driver);

    if (err == DS_OK) {
        *ppDevice = device;


        if (device->driver) {
     device->drvcaps.dwSize = sizeof(device->drvcaps);
            err = IDsCaptureDriver_GetCaps(device->driver,&(device->drvcaps));
     if (err != DS_OK) {
  WARN("IDsCaptureDriver_GetCaps failed\n");
  return err;
     }
        } else {
            WAVEINCAPSA wic;
            err = mmErr(waveInGetDevCapsA((UINT)device->drvdesc.dnDevNode, &wic, sizeof(wic)));

            if (err == DS_OK) {
                device->drvcaps.dwFlags = 0;
                lstrcpynA(device->drvdesc.szDrvname, wic.szPname,
                          sizeof(device->drvdesc.szDrvname));

                device->drvcaps.dwFlags |= DSCCAPS_EMULDRIVER;
                device->drvcaps.dwFormats = wic.dwFormats;
                device->drvcaps.dwChannels = wic.wChannels;
            }
        }
    }

    return err;
}
