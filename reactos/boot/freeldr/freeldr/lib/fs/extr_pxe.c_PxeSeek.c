
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int segment; int offset; } ;
struct TYPE_8__ {scalar_t__ BufferSize; TYPE_1__ Buffer; } ;
typedef TYPE_2__ t_PXENV_TFTP_READ ;
typedef int readData ;
typedef int ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_9__ {scalar_t__ HighPart; scalar_t__ LowPart; } ;
typedef scalar_t__ SEEKMODE ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef scalar_t__ ARC_STATUS ;


 int CallPxe (int ,TYPE_2__*) ;
 scalar_t__ EBADF ;
 scalar_t__ EINVAL ;
 scalar_t__ EIO ;
 scalar_t__ ESUCCESS ;
 scalar_t__ NO_FILE ;
 int OpenReadOnly ;
 int PXENV_TFTP_READ ;
 scalar_t__ PxeClose (scalar_t__) ;
 scalar_t__ PxeOpen (int ,int ,scalar_t__*) ;
 int RtlCopyMemory (scalar_t__,scalar_t__,scalar_t__) ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 scalar_t__ SeekAbsolute ;
 scalar_t__ _CachedFile ;
 scalar_t__ _CachedLength ;
 scalar_t__ _FilePosition ;
 scalar_t__ _OpenFile ;
 int _OpenFileName ;
 scalar_t__ _Packet ;
 scalar_t__ _PacketPosition ;

__attribute__((used)) static ARC_STATUS PxeSeek(ULONG FileId, LARGE_INTEGER* Position, SEEKMODE SeekMode)
{
    t_PXENV_TFTP_READ readData;

    if (_OpenFile == NO_FILE || FileId != _OpenFile)
        return EBADF;

    if (Position->HighPart != 0 || SeekMode != SeekAbsolute)
        return EINVAL;

    if (!_CachedFile && Position->LowPart < _FilePosition)
    {

        if (PxeClose(FileId) != ESUCCESS)
            return EIO;
        if (PxeOpen(_OpenFileName, OpenReadOnly, &FileId) != ESUCCESS)
            return EIO;
    }

    RtlZeroMemory(&readData, sizeof(readData));
    readData.Buffer.segment = ((ULONG_PTR)_Packet & 0xf0000) / 16;
    readData.Buffer.offset = (ULONG_PTR)_Packet & 0xffff;


    while (Position->LowPart > _CachedLength)
    {
        if (!CallPxe(PXENV_TFTP_READ, &readData))
            return EIO;
        if (_CachedFile)
        {
            RtlCopyMemory(_CachedFile + _CachedLength, _Packet, readData.BufferSize);
        }
        _PacketPosition = _CachedLength;
        _CachedLength += readData.BufferSize;
    }

    _FilePosition = Position->LowPart;
    return ESUCCESS;
}
