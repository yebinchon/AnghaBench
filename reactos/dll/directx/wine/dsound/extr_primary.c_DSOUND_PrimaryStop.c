
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int mixlock; int hwo; scalar_t__ hwbuf; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DirectSoundDevice ;


 scalar_t__ DSERR_BUFFERLOST ;
 int DSOUND_PrimaryClose (TYPE_1__*) ;
 scalar_t__ DSOUND_PrimaryOpen (TYPE_1__*) ;
 scalar_t__ DSOUND_ReopenDevice (TYPE_1__*,int ) ;
 scalar_t__ DS_OK ;
 int ERR (char*) ;
 int EnterCriticalSection (int *) ;
 scalar_t__ FAILED (scalar_t__) ;
 int FALSE ;
 scalar_t__ IDsDriverBuffer_Stop (scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,TYPE_1__*) ;
 int WARN (char*) ;
 scalar_t__ mmErr (int ) ;
 int waveOutPause (int ) ;

HRESULT DSOUND_PrimaryStop(DirectSoundDevice *device)
{
 HRESULT err = DS_OK;
 TRACE("(%p)\n", device);

 if (device->hwbuf) {
  err = IDsDriverBuffer_Stop(device->hwbuf);
  if (err == DSERR_BUFFERLOST) {
   DSOUND_PrimaryClose(device);
   err = DSOUND_ReopenDevice(device, FALSE);
   if (FAILED(err))
    ERR("DSOUND_ReopenDevice failed\n");
   else
   {
    err = DSOUND_PrimaryOpen(device);
    if (FAILED(err))
     WARN("DSOUND_PrimaryOpen failed\n");
   }
  } else if (err != DS_OK) {
   WARN("IDsDriverBuffer_Stop failed\n");
  }
 } else {


  LeaveCriticalSection(&(device->mixlock));


  err = mmErr(waveOutPause(device->hwo));


  EnterCriticalSection(&(device->mixlock));

  if (err != DS_OK)
   WARN("waveOutPause failed\n");
 }

 return err;
}
