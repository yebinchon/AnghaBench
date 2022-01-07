
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hwo; scalar_t__ hwbuf; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_1__ DirectSoundDevice ;


 int DSBPLAY_LOOPING ;
 scalar_t__ DS_OK ;
 scalar_t__ IDsDriverBuffer_Play (scalar_t__,int ,int ,int ) ;
 int TRACE (char*,TYPE_1__*) ;
 int WARN (char*) ;
 scalar_t__ mmErr (int ) ;
 int waveOutRestart (int ) ;

HRESULT DSOUND_PrimaryPlay(DirectSoundDevice *device)
{
 HRESULT err = DS_OK;
 TRACE("(%p)\n", device);

 if (device->hwbuf) {
  err = IDsDriverBuffer_Play(device->hwbuf, 0, 0, DSBPLAY_LOOPING);
  if (err != DS_OK)
   WARN("IDsDriverBuffer_Play failed\n");
 } else {
  err = mmErr(waveOutRestart(device->hwo));
  if (err != DS_OK)
   WARN("waveOutRestart failed\n");
 }

 return err;
}
