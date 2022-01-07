
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int segment; int offset; } ;
struct TYPE_6__ {scalar_t__ BufferSize; TYPE_1__ Buffer; } ;
typedef TYPE_2__ t_PXENV_TFTP_READ ;
typedef int readData ;
typedef int VOID ;
typedef int ULONG_PTR ;
typedef scalar_t__ ULONG ;
typedef int UCHAR ;
typedef int ARC_STATUS ;


 int CallPxe (int ,TYPE_2__*) ;
 int EBADF ;
 int EIO ;
 int ESUCCESS ;
 scalar_t__ NO_FILE ;
 int PXENV_TFTP_READ ;
 int RtlCopyMemory (int *,scalar_t__,scalar_t__) ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 int * _CachedFile ;
 scalar_t__ _CachedLength ;
 scalar_t__ _FilePosition ;
 scalar_t__ _OpenFile ;
 scalar_t__ _Packet ;
 scalar_t__ _PacketPosition ;

__attribute__((used)) static ARC_STATUS PxeRead(ULONG FileId, VOID* Buffer, ULONG N, ULONG* Count)
{
    t_PXENV_TFTP_READ readData;
    ULONG i;

    *Count = 0;

    if (_OpenFile == NO_FILE || FileId != _OpenFile)
        return EBADF;

    RtlZeroMemory(&readData, sizeof(readData));
    readData.Buffer.segment = ((ULONG_PTR)_Packet & 0xf0000) / 16;
    readData.Buffer.offset = (ULONG_PTR)_Packet & 0xffff;


    while (N > 0)
    {
        if (N < _CachedLength - _FilePosition)
            i = N;
        else
            i = _CachedLength - _FilePosition;
        if (_CachedFile)
            RtlCopyMemory(Buffer, _CachedFile + _FilePosition, i);
        else
            RtlCopyMemory(Buffer, _Packet + _FilePosition - _PacketPosition, i);
        _FilePosition += i;
        Buffer = (UCHAR*)Buffer + i;
        *Count += i;
        N -= i;
        if (N == 0)
            break;

        if (!CallPxe(PXENV_TFTP_READ, &readData))
            return EIO;
        if (_CachedFile)
            RtlCopyMemory(_CachedFile + _CachedLength, _Packet, readData.BufferSize);
        _PacketPosition = _CachedLength;
        _CachedLength += readData.BufferSize;
    }

    return ESUCCESS;
}
