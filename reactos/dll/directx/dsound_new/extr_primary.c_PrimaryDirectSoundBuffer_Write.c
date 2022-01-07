
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int hPin; } ;
struct TYPE_8__ {int Numerator; int Denominator; } ;
struct TYPE_9__ {int Size; TYPE_1__ PresentationTime; int Data; scalar_t__ DataUsed; scalar_t__ FrameExtent; int hEvent; } ;
typedef TYPE_2__ OVERLAPPED ;
typedef int LPVOID ;
typedef int LPDIRECTSOUNDBUFFER8 ;
typedef TYPE_3__* LPCDirectSoundBuffer ;
typedef TYPE_2__ KSSTREAM_HEADER ;
typedef scalar_t__ DWORD ;


 int ASSERT (int ) ;
 int CDirectSoundBuffer ;
 int CONTAINING_RECORD (int ,int ,int ) ;
 int CreateEvent (int *,int ,int ,int *) ;
 scalar_t__ DeviceIoControl (int ,int ,int *,int ,TYPE_2__*,int,scalar_t__*,TYPE_2__*) ;
 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int IOCTL_KS_WRITE_STREAM ;
 int ZeroMemory (TYPE_2__*,int) ;
 int lpVtbl ;

DWORD
PrimaryDirectSoundBuffer_Write(
    LPDIRECTSOUNDBUFFER8 iface,
    LPVOID Buffer,
    DWORD BufferSize)
{
    KSSTREAM_HEADER Header;
    DWORD Result, BytesTransferred;
    OVERLAPPED Overlapped;

    LPCDirectSoundBuffer This = (LPCDirectSoundBuffer)CONTAINING_RECORD(iface, CDirectSoundBuffer, lpVtbl);

    ZeroMemory(&Overlapped, sizeof(OVERLAPPED));
    Overlapped.hEvent = CreateEvent(((void*)0), FALSE, FALSE, ((void*)0));


    ASSERT(This->hPin);
    ZeroMemory(&Header, sizeof(KSSTREAM_HEADER));

    Header.FrameExtent = BufferSize;
    Header.DataUsed = BufferSize;
    Header.Data = Buffer;
    Header.Size = sizeof(KSSTREAM_HEADER);
    Header.PresentationTime.Numerator = 1;
    Header.PresentationTime.Denominator = 1;

    Result = DeviceIoControl(This->hPin, IOCTL_KS_WRITE_STREAM, ((void*)0), 0, &Header, sizeof(KSSTREAM_HEADER), &BytesTransferred, &Overlapped);

    if (Result != ERROR_SUCCESS)
        return 0;

    return BytesTransferred;
}
