
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pwplay; int pwqueue; int fraglen; int helfrags; scalar_t__ hwbuf; } ;
typedef int* LPDWORD ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DirectSoundDevice ;


 scalar_t__ DS_OK ;
 int GetTickCount () ;
 scalar_t__ IDsDriverBuffer_GetPosition (scalar_t__,int*,int*) ;
 scalar_t__ S_OK ;
 int TRACE (char*,...) ;
 int WARN (char*) ;

HRESULT DSOUND_PrimaryGetPosition(DirectSoundDevice *device, LPDWORD playpos, LPDWORD writepos)
{
 TRACE("(%p,%p,%p)\n", device, playpos, writepos);

 if (device->hwbuf) {
  HRESULT err=IDsDriverBuffer_GetPosition(device->hwbuf,playpos,writepos);
  if (err != S_OK) {
   WARN("IDsDriverBuffer_GetPosition failed\n");
   return err;
  }
 } else {
  TRACE("pwplay=%i, pwqueue=%i\n", device->pwplay, device->pwqueue);


  if (playpos)

   *playpos = device->pwplay * device->fraglen;


  if (writepos)

   *writepos = ((device->pwplay + device->pwqueue) % device->helfrags) * device->fraglen;
 }
 TRACE("playpos = %d, writepos = %d (%p, time=%d)\n", playpos?*playpos:-1, writepos?*writepos:-1, device, GetTickCount());
 return DS_OK;
}
