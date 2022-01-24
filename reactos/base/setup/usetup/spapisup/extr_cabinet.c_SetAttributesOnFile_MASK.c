#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_7__ {int /*<<< orphan*/  FileAttributes; } ;
struct TYPE_6__ {int Attributes; } ;
typedef  TYPE_1__* PCFFILE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_2__ FILE_BASIC_INFORMATION ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int CAB_ATTRIB_ARCHIVE ; 
 int CAB_ATTRIB_DIRECTORY ; 
 int CAB_ATTRIB_HIDDEN ; 
 int CAB_ATTRIB_READONLY ; 
 int CAB_ATTRIB_SYSTEM ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_ARCHIVE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_HIDDEN ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_READONLY ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_SYSTEM ; 
 int /*<<< orphan*/  FileBasicInformation ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_2__*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL
FUNC4(PCFFILE File,
                    HANDLE hFile)
{
    FILE_BASIC_INFORMATION FileBasic;
    IO_STATUS_BLOCK IoStatusBlock;
    NTSTATUS NtStatus;
    ULONG Attributes = 0;

    if (File->Attributes & CAB_ATTRIB_READONLY)
        Attributes |= FILE_ATTRIBUTE_READONLY;

    if (File->Attributes & CAB_ATTRIB_HIDDEN)
        Attributes |= FILE_ATTRIBUTE_HIDDEN;

    if (File->Attributes & CAB_ATTRIB_SYSTEM)
        Attributes |= FILE_ATTRIBUTE_SYSTEM;

    if (File->Attributes & CAB_ATTRIB_DIRECTORY)
        Attributes |= FILE_ATTRIBUTE_DIRECTORY;

    if (File->Attributes & CAB_ATTRIB_ARCHIVE)
        Attributes |= FILE_ATTRIBUTE_ARCHIVE;

    NtStatus = FUNC2(hFile,
                                      &IoStatusBlock,
                                      &FileBasic,
                                      sizeof(FILE_BASIC_INFORMATION),
                                      FileBasicInformation);
    if (!FUNC1(NtStatus))
    {
        FUNC0("NtQueryInformationFile() failed (%x)\n", NtStatus);
    }
    else
    {
        FileBasic.FileAttributes = Attributes;

        NtStatus = FUNC3(hFile,
                                        &IoStatusBlock,
                                        &FileBasic,
                                        sizeof(FILE_BASIC_INFORMATION),
                                        FileBasicInformation);
        if (!FUNC1(NtStatus))
        {
            FUNC0("NtSetInformationFile() failed (%x)\n", NtStatus);
        }
    }

    return FUNC1(NtStatus);
}