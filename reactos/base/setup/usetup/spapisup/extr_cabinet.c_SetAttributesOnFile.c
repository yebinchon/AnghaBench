
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int FileAttributes; } ;
struct TYPE_6__ {int Attributes; } ;
typedef TYPE_1__* PCFFILE ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_2__ FILE_BASIC_INFORMATION ;
typedef int BOOL ;


 int CAB_ATTRIB_ARCHIVE ;
 int CAB_ATTRIB_DIRECTORY ;
 int CAB_ATTRIB_HIDDEN ;
 int CAB_ATTRIB_READONLY ;
 int CAB_ATTRIB_SYSTEM ;
 int DPRINT (char*,int ) ;
 int FILE_ATTRIBUTE_ARCHIVE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_READONLY ;
 int FILE_ATTRIBUTE_SYSTEM ;
 int FileBasicInformation ;
 int NT_SUCCESS (int ) ;
 int NtQueryInformationFile (int ,int *,TYPE_2__*,int,int ) ;
 int NtSetInformationFile (int ,int *,TYPE_2__*,int,int ) ;

__attribute__((used)) static BOOL
SetAttributesOnFile(PCFFILE File,
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

    NtStatus = NtQueryInformationFile(hFile,
                                      &IoStatusBlock,
                                      &FileBasic,
                                      sizeof(FILE_BASIC_INFORMATION),
                                      FileBasicInformation);
    if (!NT_SUCCESS(NtStatus))
    {
        DPRINT("NtQueryInformationFile() failed (%x)\n", NtStatus);
    }
    else
    {
        FileBasic.FileAttributes = Attributes;

        NtStatus = NtSetInformationFile(hFile,
                                        &IoStatusBlock,
                                        &FileBasic,
                                        sizeof(FILE_BASIC_INFORMATION),
                                        FileBasicInformation);
        if (!NT_SUCCESS(NtStatus))
        {
            DPRINT("NtSetInformationFile() failed (%x)\n", NtStatus);
        }
    }

    return NT_SUCCESS(NtStatus);
}
