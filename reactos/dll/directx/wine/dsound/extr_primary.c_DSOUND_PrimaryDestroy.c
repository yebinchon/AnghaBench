
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int mixlock; int * pwfx; int * pwave; scalar_t__ hwbuf; scalar_t__ driver; } ;
typedef int HRESULT ;
typedef TYPE_1__ DirectSoundDevice ;


 int DSOUND_PrimaryClose (TYPE_1__*) ;
 int DS_OK ;
 int EnterCriticalSection (int *) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 scalar_t__ IDsDriverBuffer_Release (scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,TYPE_1__*) ;

HRESULT DSOUND_PrimaryDestroy(DirectSoundDevice *device)
{
 TRACE("(%p)\n", device);


 EnterCriticalSection(&(device->mixlock));

 DSOUND_PrimaryClose(device);
 if (device->driver) {
  if (device->hwbuf) {
   if (IDsDriverBuffer_Release(device->hwbuf) == 0)
    device->hwbuf = 0;
  }
 } else
                HeapFree(GetProcessHeap(),0,device->pwave);
        HeapFree(GetProcessHeap(),0,device->pwfx);
        device->pwfx=((void*)0);

 LeaveCriticalSection(&(device->mixlock));


 return DS_OK;
}
