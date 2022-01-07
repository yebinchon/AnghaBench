
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_10__ {long long QuadPart; } ;
struct TYPE_9__ {TYPE_1__* FirstSection; } ;
struct TYPE_8__ {struct TYPE_8__* Next; scalar_t__ Data; scalar_t__ Name; } ;
struct TYPE_7__ {struct TYPE_7__* Next; TYPE_2__* FirstKey; scalar_t__ Name; } ;
typedef TYPE_1__* PINICACHESECTION ;
typedef TYPE_2__* PINICACHEKEY ;
typedef TYPE_3__* PINICACHE ;
typedef int * PCHAR ;
typedef int NTSTATUS ;
typedef TYPE_4__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int CHAR ;


 int DPRINT (char*,int) ;
 int DPRINT1 (char*) ;
 int HEAP_ZERO_MEMORY ;
 int NT_SUCCESS (int) ;
 int NtWriteFile (int ,int *,int *,int *,int *,int *,int,TYPE_4__*,int *) ;
 int ProcessHeap ;
 scalar_t__ RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,int *) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int sprintf (int *,char*,...) ;
 int wcslen (scalar_t__) ;

NTSTATUS
IniCacheSaveByHandle(
    PINICACHE Cache,
    HANDLE FileHandle)
{
    NTSTATUS Status;
    PINICACHESECTION Section;
    PINICACHEKEY Key;
    ULONG BufferSize;
    PCHAR Buffer;
    PCHAR Ptr;
    ULONG Len;
    IO_STATUS_BLOCK IoStatusBlock;
    LARGE_INTEGER Offset;


    BufferSize = 0;
    Section = Cache->FirstSection;
    while (Section != ((void*)0))
    {
        BufferSize += (Section->Name ? wcslen(Section->Name) : 0)
                       + 4;

        Key = Section->FirstKey;
        while (Key != ((void*)0))
        {
            BufferSize += wcslen(Key->Name)
                          + (Key->Data ? wcslen(Key->Data) : 0)
                          + 3;
            Key = Key->Next;
        }

        Section = Section->Next;
        if (Section != ((void*)0))
            BufferSize += 2;
    }

    DPRINT("BufferSize: %lu\n", BufferSize);


    Buffer = (CHAR*)RtlAllocateHeap(ProcessHeap,
                                    HEAP_ZERO_MEMORY,
                                    BufferSize + 1);
    if (Buffer == ((void*)0))
    {
        DPRINT1("RtlAllocateHeap() failed\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    Ptr = Buffer;
    Section = Cache->FirstSection;
    while (Section != ((void*)0))
    {
        Len = sprintf(Ptr, "[%S]\r\n", Section->Name);
        Ptr += Len;

        Key = Section->FirstKey;
        while (Key != ((void*)0))
        {
            Len = sprintf(Ptr, "%S=%S\r\n", Key->Name, Key->Data);
            Ptr += Len;
            Key = Key->Next;
        }

        Section = Section->Next;
        if (Section != ((void*)0))
        {
            Len = sprintf(Ptr, "\r\n");
            Ptr += Len;
        }
    }


    Offset.QuadPart = 0LL;
    Status = NtWriteFile(FileHandle,
                         ((void*)0),
                         ((void*)0),
                         ((void*)0),
                         &IoStatusBlock,
                         Buffer,
                         BufferSize,
                         &Offset,
                         ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        DPRINT("NtWriteFile() failed (Status %lx)\n", Status);
        RtlFreeHeap(ProcessHeap, 0, Buffer);
        return Status;
    }

    RtlFreeHeap(ProcessHeap, 0, Buffer);
    return STATUS_SUCCESS;
}
