
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int UCHAR ;
struct TYPE_17__ {scalar_t__ Information; } ;
struct TYPE_16__ {scalar_t__ QuadPart; } ;
typedef int SIZE_T ;
typedef int PVOID ;
typedef int PIO_STATUS_BLOCK ;
typedef scalar_t__ NTSTATUS ;
typedef int LPVOID ;
typedef int (* LPPROGRESS_ROUTINE ) (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int,int ,int ,int ) ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_6__ IO_STATUS_BLOCK ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int CALLBACK_CHUNK_FINISHED ;
 int CALLBACK_STREAM_SWITCH ;
 scalar_t__ FALSE ;
 int MEM_COMMIT ;
 int MEM_RELEASE ;
 int MEM_RESERVE ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtAllocateVirtualMemory (int ,int *,int ,int*,int,int ) ;
 int NtCurrentProcess () ;
 int NtFreeVirtualMemory (int ,int *,int*,int ) ;
 scalar_t__ NtReadFile (int ,int *,int *,int *,int ,int *,int,int *,int *) ;
 scalar_t__ NtWriteFile (int ,int *,int *,int *,int ,int *,scalar_t__,int *,int *) ;
 int PAGE_READWRITE ;




 scalar_t__ STATUS_END_OF_FILE ;
 scalar_t__ STATUS_REQUEST_ABORTED ;
 scalar_t__ STATUS_SUCCESS ;
 int TRACE (char*,...) ;
 scalar_t__ TRUE ;
 int WARN (char*,scalar_t__) ;
 int stub1 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int ,int,int ,int ,int ) ;

__attribute__((used)) static NTSTATUS
CopyLoop (
    HANDLE FileHandleSource,
    HANDLE FileHandleDest,
    LARGE_INTEGER SourceFileSize,
    LPPROGRESS_ROUTINE lpProgressRoutine,
    LPVOID lpData,
    BOOL *pbCancel,
    BOOL *KeepDest
)
{
    NTSTATUS errCode;
    IO_STATUS_BLOCK IoStatusBlock;
    UCHAR *lpBuffer = ((void*)0);
    SIZE_T RegionSize = 0x10000;
    LARGE_INTEGER BytesCopied;
    DWORD CallbackReason;
    DWORD ProgressResult;
    BOOL EndOfFileFound;

    *KeepDest = FALSE;
    errCode = NtAllocateVirtualMemory(NtCurrentProcess(),
                                      (PVOID *)&lpBuffer,
                                      0,
                                      &RegionSize,
                                      MEM_RESERVE | MEM_COMMIT,
                                      PAGE_READWRITE);

    if (NT_SUCCESS(errCode))
    {
        BytesCopied.QuadPart = 0;
        EndOfFileFound = FALSE;
        CallbackReason = CALLBACK_STREAM_SWITCH;
        while (! EndOfFileFound &&
                NT_SUCCESS(errCode) &&
                (((void*)0) == pbCancel || ! *pbCancel))
        {
            if (((void*)0) != lpProgressRoutine)
            {
                ProgressResult = (*lpProgressRoutine)(SourceFileSize,
                                                      BytesCopied,
                                                      SourceFileSize,
                                                      BytesCopied,
                                                      0,
                                                      CallbackReason,
                                                      FileHandleSource,
                                                      FileHandleDest,
                                                      lpData);
                switch (ProgressResult)
                {
                case 131:
                    TRACE("Progress callback requested cancel\n");
                    errCode = STATUS_REQUEST_ABORTED;
                    break;
                case 128:
                    TRACE("Progress callback requested stop\n");
                    errCode = STATUS_REQUEST_ABORTED;
                    *KeepDest = TRUE;
                    break;
                case 129:
                    lpProgressRoutine = ((void*)0);
                    break;
                case 130:
                default:
                    break;
                }
                CallbackReason = CALLBACK_CHUNK_FINISHED;
            }
            if (NT_SUCCESS(errCode))
            {
                errCode = NtReadFile(FileHandleSource,
                                     ((void*)0),
                                     ((void*)0),
                                     ((void*)0),
                                     (PIO_STATUS_BLOCK)&IoStatusBlock,
                                     lpBuffer,
                                     RegionSize,
                                     ((void*)0),
                                     ((void*)0));



                if (NT_SUCCESS(errCode) && IoStatusBlock.Information == 0)
                {
                    errCode = STATUS_END_OF_FILE;
                }
                if (NT_SUCCESS(errCode) && (((void*)0) == pbCancel || ! *pbCancel))
                {
                    errCode = NtWriteFile(FileHandleDest,
                                          ((void*)0),
                                          ((void*)0),
                                          ((void*)0),
                                          (PIO_STATUS_BLOCK)&IoStatusBlock,
                                          lpBuffer,
                                          IoStatusBlock.Information,
                                          ((void*)0),
                                          ((void*)0));
                    if (NT_SUCCESS(errCode))
                    {
                        BytesCopied.QuadPart += IoStatusBlock.Information;
                    }
                    else
                    {
                        WARN("Error 0x%08x reading writing to dest\n", errCode);
                    }
                }
                else if (!NT_SUCCESS(errCode))
                {
                    if (STATUS_END_OF_FILE == errCode)
                    {
                        EndOfFileFound = TRUE;
                        errCode = STATUS_SUCCESS;
                    }
                    else
                    {
                        WARN("Error 0x%08x reading from source\n", errCode);
                    }
                }
            }
        }

        if (! EndOfFileFound && (((void*)0) != pbCancel && *pbCancel))
        {
            TRACE("User requested cancel\n");
            errCode = STATUS_REQUEST_ABORTED;
        }

        NtFreeVirtualMemory(NtCurrentProcess(),
                            (PVOID *)&lpBuffer,
                            &RegionSize,
                            MEM_RELEASE);
    }
    else
    {
        TRACE("Error 0x%08x allocating buffer of %lu bytes\n", errCode, RegionSize);
    }

    return errCode;
}
