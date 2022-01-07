
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int LowPart; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_10__ {TYPE_2__ EndOfFile; } ;
struct TYPE_9__ {unsigned long long QuadPart; } ;
typedef int * PINICACHE ;
typedef scalar_t__* PCHAR ;
typedef int NTSTATUS ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_4__ FILE_STANDARD_INFORMATION ;
typedef scalar_t__ CHAR ;
typedef int BOOLEAN ;


 int DPRINT (char*,int) ;
 int DPRINT1 (char*,...) ;
 int FileStandardInformation ;
 int IniCacheLoadFromMemory (int **,scalar_t__*,int,int ) ;
 int NT_SUCCESS (int) ;
 int NtQueryInformationFile (int ,int *,TYPE_4__*,int,int ) ;
 int NtReadFile (int ,int *,int *,int *,int *,scalar_t__*,int,TYPE_3__*,int *) ;
 int ProcessHeap ;
 scalar_t__ RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,scalar_t__*) ;
 int STATUS_INSUFFICIENT_RESOURCES ;

NTSTATUS
IniCacheLoadByHandle(
    PINICACHE *Cache,
    HANDLE FileHandle,
    BOOLEAN String)
{
    NTSTATUS Status;
    IO_STATUS_BLOCK IoStatusBlock;
    FILE_STANDARD_INFORMATION FileInfo;
    PCHAR FileBuffer;
    ULONG FileLength;
    LARGE_INTEGER FileOffset;

    *Cache = ((void*)0);


    Status = NtQueryInformationFile(FileHandle,
                                    &IoStatusBlock,
                                    &FileInfo,
                                    sizeof(FILE_STANDARD_INFORMATION),
                                    FileStandardInformation);
    if (!NT_SUCCESS(Status))
    {
        DPRINT("NtQueryInformationFile() failed (Status %lx)\n", Status);
        return Status;
    }

    FileLength = FileInfo.EndOfFile.u.LowPart;

    DPRINT("File size: %lu\n", FileLength);


    FileBuffer = (CHAR*)RtlAllocateHeap(ProcessHeap,
                                        0,
                                        FileLength + 1);
    if (FileBuffer == ((void*)0))
    {
        DPRINT1("RtlAllocateHeap() failed\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    FileOffset.QuadPart = 0ULL;
    Status = NtReadFile(FileHandle,
                        ((void*)0),
                        ((void*)0),
                        ((void*)0),
                        &IoStatusBlock,
                        FileBuffer,
                        FileLength,
                        &FileOffset,
                        ((void*)0));


    FileBuffer[FileLength] = 0;

    if (!NT_SUCCESS(Status))
    {
        DPRINT("NtReadFile() failed (Status %lx)\n", Status);
        goto Quit;
    }

    Status = IniCacheLoadFromMemory(Cache, FileBuffer, FileLength, String);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("IniCacheLoadFromMemory() failed (Status %lx)\n", Status);
    }

Quit:

    RtlFreeHeap(ProcessHeap, 0, FileBuffer);
    return Status;
}
