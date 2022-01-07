
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int dwFlags; int dnDevNode; } ;
struct TYPE_5__ {int * driver; int pwfx; TYPE_3__ drvdesc; scalar_t__ hwo; int * buffer; } ;
typedef int HWAVEOUT ;
typedef int HRESULT ;
typedef TYPE_1__ DirectSoundDevice ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;


 int CALLBACK_FUNCTION ;
 int DRV_QUERYDSOUNDIFACE ;
 int DSDDESC_DOMMSYSTEMOPEN ;
 int DSDDESC_DOMMSYSTEMSETFORMAT ;
 scalar_t__ DSOUND_callback ;
 scalar_t__ DS_HW_ACCEL_EMULATION ;
 int DS_OK ;
 scalar_t__ FAILED (int ) ;
 int IDsDriver_Close (int *) ;
 int IDsDriver_GetDriverDesc (int *,TYPE_3__*) ;
 int IDsDriver_Open (int *) ;
 int IDsDriver_Release (int *) ;
 int TRACE (char*,TYPE_1__*,int ) ;
 int WARN (char*,...) ;
 int WAVE_DIRECTSOUND ;
 int WAVE_MAPPED ;
 scalar_t__ ds_hw_accel ;
 int mmErr (int ) ;
 int waveOutClose (scalar_t__) ;
 int waveOutMessage (int ,int ,scalar_t__,int ) ;
 int waveOutOpen (scalar_t__*,int,int ,scalar_t__,scalar_t__,int) ;

HRESULT DSOUND_ReopenDevice(DirectSoundDevice *device, BOOL forcewave)
{
 HRESULT hres = DS_OK;
 TRACE("(%p, %d)\n", device, forcewave);

 if (device->driver)
 {
  IDsDriver_Close(device->driver);
  if (device->drvdesc.dwFlags & DSDDESC_DOMMSYSTEMOPEN)
   waveOutClose(device->hwo);
  IDsDriver_Release(device->driver);
  device->driver = ((void*)0);
  device->buffer = ((void*)0);
  device->hwo = 0;
 }
 else if (device->drvdesc.dwFlags & DSDDESC_DOMMSYSTEMOPEN)
  waveOutClose(device->hwo);


 if (ds_hw_accel != DS_HW_ACCEL_EMULATION && !forcewave)
  waveOutMessage((HWAVEOUT)(DWORD_PTR)device->drvdesc.dnDevNode, DRV_QUERYDSOUNDIFACE, (DWORD_PTR)&device->driver, 0);


 if (device->driver) {
  DWORD wod = device->drvdesc.dnDevNode;
  hres = IDsDriver_GetDriverDesc(device->driver,&(device->drvdesc));
  device->drvdesc.dnDevNode = wod;
  if (FAILED(hres)) {
   WARN("IDsDriver_GetDriverDesc failed: %08x\n", hres);
   IDsDriver_Release(device->driver);
   device->driver = ((void*)0);
  }
        }


 if (!device->driver)
  device->drvdesc.dwFlags = DSDDESC_DOMMSYSTEMOPEN | DSDDESC_DOMMSYSTEMSETFORMAT;

 if (device->drvdesc.dwFlags & DSDDESC_DOMMSYSTEMOPEN)
 {
  DWORD flags = CALLBACK_FUNCTION | WAVE_MAPPED;

  if (device->driver)
   flags |= WAVE_DIRECTSOUND;

  hres = mmErr(waveOutOpen(&(device->hwo), device->drvdesc.dnDevNode, device->pwfx, (DWORD_PTR)DSOUND_callback, (DWORD_PTR)device, flags));
  if (FAILED(hres)) {
   WARN("waveOutOpen failed\n");
   if (device->driver)
   {
    IDsDriver_Release(device->driver);
    device->driver = ((void*)0);
   }
   return hres;
  }
 }

 if (device->driver)
  hres = IDsDriver_Open(device->driver);

 return hres;
}
