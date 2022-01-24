#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_7__ {int LowPart; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct TYPE_10__ {TYPE_2__ EndOfFile; } ;
struct TYPE_9__ {unsigned long long QuadPart; } ;
typedef  int /*<<< orphan*/ * PINICACHE ;
typedef  scalar_t__* PCHAR ;
typedef  int NTSTATUS ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_4__ FILE_STANDARD_INFORMATION ;
typedef  scalar_t__ CHAR ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FileStandardInformation ; 
 int FUNC2 (int /*<<< orphan*/ **,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,int,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ProcessHeap ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int STATUS_INSUFFICIENT_RESOURCES ; 

NTSTATUS
FUNC8(
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

    *Cache = NULL;

    /* Query file size */
    Status = FUNC4(FileHandle,
                                    &IoStatusBlock,
                                    &FileInfo,
                                    sizeof(FILE_STANDARD_INFORMATION),
                                    FileStandardInformation);
    if (!FUNC3(Status))
    {
        FUNC0("NtQueryInformationFile() failed (Status %lx)\n", Status);
        return Status;
    }

    FileLength = FileInfo.EndOfFile.u.LowPart;

    FUNC0("File size: %lu\n", FileLength);

    /* Allocate file buffer with NULL-terminator */
    FileBuffer = (CHAR*)FUNC6(ProcessHeap,
                                        0,
                                        FileLength + 1);
    if (FileBuffer == NULL)
    {
        FUNC1("RtlAllocateHeap() failed\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    /* Read file */
    FileOffset.QuadPart = 0ULL;
    Status = FUNC5(FileHandle,
                        NULL,
                        NULL,
                        NULL,
                        &IoStatusBlock,
                        FileBuffer,
                        FileLength,
                        &FileOffset,
                        NULL);

    /* Append NULL-terminator */
    FileBuffer[FileLength] = 0;

    if (!FUNC3(Status))
    {
        FUNC0("NtReadFile() failed (Status %lx)\n", Status);
        goto Quit;
    }

    Status = FUNC2(Cache, FileBuffer, FileLength, String);
    if (!FUNC3(Status))
    {
        FUNC1("IniCacheLoadFromMemory() failed (Status %lx)\n", Status);
    }

Quit:
    /* Free the file buffer, and return */
    FUNC7(ProcessHeap, 0, FileBuffer);
    return Status;
}