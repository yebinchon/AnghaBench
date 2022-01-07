
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ WriteOffset; scalar_t__ PlayOffset; } ;
struct TYPE_5__ {int Flags; int Set; int Id; } ;
struct TYPE_4__ {int hPin; } ;
typedef int PVOID ;
typedef scalar_t__* LPDWORD ;
typedef int LPDIRECTSOUNDBUFFER8 ;
typedef TYPE_1__* LPCDirectSoundBuffer ;
typedef TYPE_2__ KSPROPERTY ;
typedef TYPE_3__ KSAUDIO_POSITION ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;


 int CDirectSoundBuffer ;
 int CONTAINING_RECORD (int ,int ,int ) ;
 int DPRINT (char*,...) ;
 int DSERR_UNSUPPORTED ;
 int DS_OK ;
 scalar_t__ ERROR_SUCCESS ;
 int IOCTL_KS_PROPERTY ;
 int KSPROPERTY_AUDIO_POSITION ;
 int KSPROPERTY_TYPE_GET ;
 int KSPROPSETID_Audio ;
 scalar_t__ SyncOverlappedDeviceIoControl (int ,int ,int ,int,int ,int,int *) ;
 int lpVtbl ;

HRESULT
PrimaryDirectSoundBuffer_GetPosition(
    LPDIRECTSOUNDBUFFER8 iface,
    LPDWORD pdwCurrentPlayCursor,
    LPDWORD pdwCurrentWriteCursor)
{
    KSAUDIO_POSITION Position;
    KSPROPERTY Request;
    DWORD Result;
    LPCDirectSoundBuffer This = (LPCDirectSoundBuffer)CONTAINING_RECORD(iface, CDirectSoundBuffer, lpVtbl);



    if (!This->hPin)
    {
        if (pdwCurrentPlayCursor)
            *pdwCurrentPlayCursor = 0;

        if (pdwCurrentWriteCursor)
            *pdwCurrentWriteCursor = 0;

        DPRINT("No Audio Pin\n");
        return DS_OK;
    }


    Request.Id = KSPROPERTY_AUDIO_POSITION;
    Request.Set = KSPROPSETID_Audio;
    Request.Flags = KSPROPERTY_TYPE_GET;


    Result = SyncOverlappedDeviceIoControl(This->hPin, IOCTL_KS_PROPERTY, (PVOID)&Request, sizeof(KSPROPERTY), (PVOID)&Position, sizeof(KSAUDIO_POSITION), ((void*)0));

    if (Result != ERROR_SUCCESS)
    {
        DPRINT("GetPosition failed with %x\n", Result);
        return DSERR_UNSUPPORTED;
    }



    if (pdwCurrentPlayCursor)
        *pdwCurrentPlayCursor = (DWORD)Position.PlayOffset;

    if (pdwCurrentWriteCursor)
        *pdwCurrentWriteCursor = (DWORD)Position.WriteOffset;

    return DS_OK;
}
