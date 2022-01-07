
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ref; int * lpVtbl; int BufferSize; int * EventListHead; int hPin; void* bMix; void* bLoop; } ;
typedef scalar_t__ LPDIRECTSOUNDNOTIFY ;
typedef TYPE_1__* LPCDirectSoundNotifyImpl ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int CDirectSoundNotifyImpl ;
typedef void* BOOL ;


 int DSERR_OUTOFMEMORY ;
 int DS_OK ;
 int GetProcessHeap () ;
 TYPE_1__* HeapAlloc (int ,int ,int) ;
 int vt_DirectSoundNotify ;

HRESULT
NewDirectSoundNotify(
    LPDIRECTSOUNDNOTIFY * Notify,
    BOOL bLoop,
    BOOL bMix,
    HANDLE hPin,
    DWORD BufferSize)
{
    LPCDirectSoundNotifyImpl This = HeapAlloc(GetProcessHeap(), 0, sizeof(CDirectSoundNotifyImpl));

    if (!This)
        return DSERR_OUTOFMEMORY;

    This->lpVtbl = &vt_DirectSoundNotify;
    This->bLoop = bLoop;
    This->bMix = bMix;
    This->hPin = hPin;
    This->ref = 1;
    This->EventListHead = ((void*)0);
    This->BufferSize = BufferSize;

    *Notify = (LPDIRECTSOUNDNOTIFY)&This->lpVtbl;
    return DS_OK;

}
