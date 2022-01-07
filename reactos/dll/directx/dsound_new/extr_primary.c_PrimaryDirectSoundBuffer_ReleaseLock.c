
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_2__ {int Lock; } ;
typedef int LPDIRECTSOUNDBUFFER8 ;
typedef TYPE_1__* LPCDirectSoundBuffer ;


 int CDirectSoundBuffer ;
 int CONTAINING_RECORD (int ,int ,int ) ;
 int LeaveCriticalSection (int *) ;
 int lpVtbl ;

VOID
PrimaryDirectSoundBuffer_ReleaseLock(
    LPDIRECTSOUNDBUFFER8 iface)
{
    LPCDirectSoundBuffer This = (LPCDirectSoundBuffer)CONTAINING_RECORD(iface, CDirectSoundBuffer, lpVtbl);

    LeaveCriticalSection(&This->Lock);

}
