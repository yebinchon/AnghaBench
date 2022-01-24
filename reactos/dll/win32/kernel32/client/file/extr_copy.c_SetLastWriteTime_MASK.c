#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_9__ {TYPE_1__ LastWriteTime; } ;
struct TYPE_8__ {int /*<<< orphan*/  QuadPart; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_3__ FILE_BASIC_INFORMATION ;

/* Variables and functions */
 int /*<<< orphan*/  FileBasicInformation ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS
FUNC4(
    HANDLE FileHandle,
    LARGE_INTEGER LastWriteTime
)
{
    NTSTATUS errCode = STATUS_SUCCESS;
    IO_STATUS_BLOCK IoStatusBlock;
    FILE_BASIC_INFORMATION FileBasic;

    errCode = FUNC1 (FileHandle,
                                      &IoStatusBlock,
                                      &FileBasic,
                                      sizeof(FILE_BASIC_INFORMATION),
                                      FileBasicInformation);
    if (!FUNC0(errCode))
    {
        FUNC3("Error 0x%08x obtaining FileBasicInformation\n", errCode);
    }
    else
    {
        FileBasic.LastWriteTime.QuadPart = LastWriteTime.QuadPart;
        errCode = FUNC2 (FileHandle,
                                        &IoStatusBlock,
                                        &FileBasic,
                                        sizeof(FILE_BASIC_INFORMATION),
                                        FileBasicInformation);
        if (!FUNC0(errCode))
        {
            FUNC3("Error 0x%0x setting LastWriteTime\n", errCode);
        }
    }

    return errCode;
}