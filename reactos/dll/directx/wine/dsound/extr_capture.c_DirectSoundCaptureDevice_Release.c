
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_10__ {TYPE_1__* DebugInfo; } ;
struct TYPE_8__ {size_t dnDevNode; } ;
struct TYPE_9__ {TYPE_2__ drvdesc; TYPE_6__ lock; struct TYPE_9__* pwfx; scalar_t__ driver; scalar_t__ capture_buffer; int ref; } ;
struct TYPE_7__ {scalar_t__* Spare; } ;
typedef int LPDIRECTSOUNDCAPTUREBUFFER8 ;
typedef TYPE_3__ DirectSoundCaptureDevice ;


 int ** DSOUND_capture ;
 int DeleteCriticalSection (TYPE_6__*) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_3__*) ;
 int IDirectSoundCaptureBufferImpl_Release (int ) ;
 int IDsCaptureDriver_Close (scalar_t__) ;
 int IDsCaptureDriver_Release (scalar_t__) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int TRACE (char*,...) ;

__attribute__((used)) static ULONG DirectSoundCaptureDevice_Release(
    DirectSoundCaptureDevice * device)
{
    ULONG ref = InterlockedDecrement(&(device->ref));
    TRACE("(%p) ref was %d\n", device, ref + 1);

    if (!ref) {
        TRACE("deleting object\n");
        if (device->capture_buffer)
            IDirectSoundCaptureBufferImpl_Release(
  (LPDIRECTSOUNDCAPTUREBUFFER8) device->capture_buffer);

        if (device->driver) {
            IDsCaptureDriver_Close(device->driver);
            IDsCaptureDriver_Release(device->driver);
        }

        HeapFree(GetProcessHeap(), 0, device->pwfx);
        device->lock.DebugInfo->Spare[0] = 0;
        DeleteCriticalSection( &(device->lock) );
        DSOUND_capture[device->drvdesc.dnDevNode] = ((void*)0);
        HeapFree(GetProcessHeap(), 0, device);
 TRACE("(%p) released\n", device);
    }
    return ref;
}
