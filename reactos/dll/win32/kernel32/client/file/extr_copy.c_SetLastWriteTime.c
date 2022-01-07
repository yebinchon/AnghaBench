
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int QuadPart; } ;
struct TYPE_9__ {TYPE_1__ LastWriteTime; } ;
struct TYPE_8__ {int QuadPart; } ;
typedef int NTSTATUS ;
typedef TYPE_2__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef TYPE_3__ FILE_BASIC_INFORMATION ;


 int FileBasicInformation ;
 int NT_SUCCESS (int ) ;
 int NtQueryInformationFile (int ,int *,TYPE_3__*,int,int ) ;
 int NtSetInformationFile (int ,int *,TYPE_3__*,int,int ) ;
 int STATUS_SUCCESS ;
 int WARN (char*,int ) ;

__attribute__((used)) static NTSTATUS
SetLastWriteTime(
    HANDLE FileHandle,
    LARGE_INTEGER LastWriteTime
)
{
    NTSTATUS errCode = STATUS_SUCCESS;
    IO_STATUS_BLOCK IoStatusBlock;
    FILE_BASIC_INFORMATION FileBasic;

    errCode = NtQueryInformationFile (FileHandle,
                                      &IoStatusBlock,
                                      &FileBasic,
                                      sizeof(FILE_BASIC_INFORMATION),
                                      FileBasicInformation);
    if (!NT_SUCCESS(errCode))
    {
        WARN("Error 0x%08x obtaining FileBasicInformation\n", errCode);
    }
    else
    {
        FileBasic.LastWriteTime.QuadPart = LastWriteTime.QuadPart;
        errCode = NtSetInformationFile (FileHandle,
                                        &IoStatusBlock,
                                        &FileBasic,
                                        sizeof(FILE_BASIC_INFORMATION),
                                        FileBasicInformation);
        if (!NT_SUCCESS(errCode))
        {
            WARN("Error 0x%0x setting LastWriteTime\n", errCode);
        }
    }

    return errCode;
}
