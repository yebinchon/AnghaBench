
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_4__ {scalar_t__ device; int ref; } ;
typedef scalar_t__ LPDIRECTSOUND8 ;
typedef TYPE_1__ IDirectSoundImpl ;


 int DirectSoundDevice_Release (scalar_t__) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int TRACE (char*,TYPE_1__*,...) ;

__attribute__((used)) static ULONG IDirectSoundImpl_Release(
    LPDIRECTSOUND8 iface)
{
    IDirectSoundImpl *This = (IDirectSoundImpl *)iface;
    ULONG ref = InterlockedDecrement(&(This->ref));
    TRACE("(%p) ref was %d\n", This, ref + 1);

    if (!ref) {
        if (This->device)
            DirectSoundDevice_Release(This->device);
        HeapFree(GetProcessHeap(),0,This);
        TRACE("(%p) released\n", This);
    }
    return ref;
}
