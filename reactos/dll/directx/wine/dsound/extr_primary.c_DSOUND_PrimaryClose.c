
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int WAVEHDR ;
typedef int ULONG ;
struct TYPE_4__ {unsigned int helfrags; scalar_t__ hwbuf; scalar_t__ pwqueue; int mixlock; int * pwave; int hwo; } ;
typedef TYPE_1__ DirectSoundDevice ;
typedef scalar_t__ DWORD ;


 int ERR (char*,int ) ;
 int EnterCriticalSection (int *) ;
 int IDsDriverBuffer_Release (scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,TYPE_1__*) ;
 int waveOutReset (int ) ;
 int waveOutUnprepareHeader (int ,int *,int) ;

__attribute__((used)) static void DSOUND_PrimaryClose(DirectSoundDevice *device)
{
 TRACE("(%p)\n", device);


 if (!device->hwbuf) {
  unsigned c;


  LeaveCriticalSection(&(device->mixlock));

  device->pwqueue = (DWORD)-1;
  waveOutReset(device->hwo);
  for (c=0; c<device->helfrags; c++)
   waveOutUnprepareHeader(device->hwo, &device->pwave[c], sizeof(WAVEHDR));

  EnterCriticalSection(&(device->mixlock));


  device->pwqueue = 0;
 } else {
  ULONG ref = IDsDriverBuffer_Release(device->hwbuf);
  if (!ref)
   device->hwbuf = 0;
  else
   ERR("Still %d references on primary buffer, refcount leak?\n", ref);
 }
}
