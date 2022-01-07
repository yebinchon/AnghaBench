
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WAVEHDR ;
struct TYPE_3__ {size_t pwplay; size_t pwqueue; size_t helfrags; size_t fraglen; size_t prebuf; size_t mixpos; int mixlock; int * pwave; int hwo; } ;
typedef TYPE_1__ DirectSoundDevice ;
typedef size_t DWORD ;
typedef int BOOL ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,...) ;
 int waveOutWrite (int ,int *,int) ;

__attribute__((used)) static void DSOUND_WaveQueue(DirectSoundDevice *device, BOOL force)
{
 DWORD prebuf_frags, wave_writepos, wave_fragpos, i;
 TRACE("(%p)\n", device);


 wave_fragpos = (device->pwplay + device->pwqueue) % device->helfrags;


 wave_writepos = wave_fragpos * device->fraglen;

 TRACE("wave_fragpos = %i, wave_writepos = %i, pwqueue = %i, prebuf = %i\n",
  wave_fragpos, wave_writepos, device->pwqueue, device->prebuf);

 if (!force)
 {

  prebuf_frags = device->mixpos / device->fraglen;
  if (prebuf_frags == device->helfrags)
   --prebuf_frags;
  TRACE("wave_fragpos = %d, mixpos_frags = %d\n", wave_fragpos, prebuf_frags);
  if (prebuf_frags < wave_fragpos)
   prebuf_frags += device->helfrags;
  prebuf_frags -= wave_fragpos;
  TRACE("wanted prebuf_frags = %d\n", prebuf_frags);
 }
 else

  prebuf_frags = device->prebuf;


 if ((prebuf_frags + device->pwqueue) > device->prebuf)
  prebuf_frags = device->prebuf - device->pwqueue;

 TRACE("prebuf_frags = %i\n", prebuf_frags);


 device->pwqueue += prebuf_frags;


 LeaveCriticalSection(&(device->mixlock));



 for(i=0; i<prebuf_frags; i++){
  TRACE("queueing wave buffer %i\n", wave_fragpos);
  waveOutWrite(device->hwo, &device->pwave[wave_fragpos], sizeof(WAVEHDR));
  wave_fragpos++;
  wave_fragpos %= device->helfrags;
 }


 EnterCriticalSection(&(device->mixlock));

 TRACE("queue now = %i\n", device->pwqueue);
}
