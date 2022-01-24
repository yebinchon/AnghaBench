#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_17__ {scalar_t__ Information; } ;
struct TYPE_16__ {scalar_t__ QuadPart; } ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PIO_STATUS_BLOCK ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int (* LPPROGRESS_ROUTINE ) (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;
typedef  TYPE_1__ LARGE_INTEGER ;
typedef  TYPE_6__ IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CALLBACK_CHUNK_FINISHED ; 
 int CALLBACK_STREAM_SWITCH ; 
 scalar_t__ FALSE ; 
 int MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int MEM_RESERVE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
#define  PROGRESS_CANCEL 131 
#define  PROGRESS_CONTINUE 130 
#define  PROGRESS_QUIET 129 
#define  PROGRESS_STOP 128 
 scalar_t__ STATUS_END_OF_FILE ; 
 scalar_t__ STATUS_REQUEST_ABORTED ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 
 int FUNC8 (TYPE_1__,TYPE_1__,TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS
FUNC9 (
    HANDLE			FileHandleSource,
    HANDLE			FileHandleDest,
    LARGE_INTEGER		SourceFileSize,
    LPPROGRESS_ROUTINE	lpProgressRoutine,
    LPVOID			lpData,
    BOOL			*pbCancel,
    BOOL                 *KeepDest
)
{
    NTSTATUS errCode;
    IO_STATUS_BLOCK IoStatusBlock;
    UCHAR *lpBuffer = NULL;
    SIZE_T RegionSize = 0x10000;
    LARGE_INTEGER BytesCopied;
    DWORD CallbackReason;
    DWORD ProgressResult;
    BOOL EndOfFileFound;

    *KeepDest = FALSE;
    errCode = FUNC1(FUNC2(),
                                      (PVOID *)&lpBuffer,
                                      0,
                                      &RegionSize,
                                      MEM_RESERVE | MEM_COMMIT,
                                      PAGE_READWRITE);

    if (FUNC0(errCode))
    {
        BytesCopied.QuadPart = 0;
        EndOfFileFound = FALSE;
        CallbackReason = CALLBACK_STREAM_SWITCH;
        while (! EndOfFileFound &&
                FUNC0(errCode) &&
                (NULL == pbCancel || ! *pbCancel))
        {
            if (NULL != lpProgressRoutine)
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
                case PROGRESS_CANCEL:
                    FUNC6("Progress callback requested cancel\n");
                    errCode = STATUS_REQUEST_ABORTED;
                    break;
                case PROGRESS_STOP:
                    FUNC6("Progress callback requested stop\n");
                    errCode = STATUS_REQUEST_ABORTED;
                    *KeepDest = TRUE;
                    break;
                case PROGRESS_QUIET:
                    lpProgressRoutine = NULL;
                    break;
                case PROGRESS_CONTINUE:
                default:
                    break;
                }
                CallbackReason = CALLBACK_CHUNK_FINISHED;
            }
            if (FUNC0(errCode))
            {
                errCode = FUNC4(FileHandleSource,
                                     NULL,
                                     NULL,
                                     NULL,
                                     (PIO_STATUS_BLOCK)&IoStatusBlock,
                                     lpBuffer,
                                     RegionSize,
                                     NULL,
                                     NULL);
                /* With sync read, 0 length + status success mean EOF:
                 * https://msdn.microsoft.com/en-us/library/windows/desktop/aa365467(v=vs.85).aspx
                 */
                if (FUNC0(errCode) && IoStatusBlock.Information == 0)
                {
                    errCode = STATUS_END_OF_FILE;
                }
                if (FUNC0(errCode) && (NULL == pbCancel || ! *pbCancel))
                {
                    errCode = FUNC5(FileHandleDest,
                                          NULL,
                                          NULL,
                                          NULL,
                                          (PIO_STATUS_BLOCK)&IoStatusBlock,
                                          lpBuffer,
                                          IoStatusBlock.Information,
                                          NULL,
                                          NULL);
                    if (FUNC0(errCode))
                    {
                        BytesCopied.QuadPart += IoStatusBlock.Information;
                    }
                    else
                    {
                        FUNC7("Error 0x%08x reading writing to dest\n", errCode);
                    }
                }
                else if (!FUNC0(errCode))
                {
                    if (STATUS_END_OF_FILE == errCode)
                    {
                        EndOfFileFound = TRUE;
                        errCode = STATUS_SUCCESS;
                    }
                    else
                    {
                        FUNC7("Error 0x%08x reading from source\n", errCode);
                    }
                }
            }
        }

        if (! EndOfFileFound && (NULL != pbCancel && *pbCancel))
        {
            FUNC6("User requested cancel\n");
            errCode = STATUS_REQUEST_ABORTED;
        }

        FUNC3(FUNC2(),
                            (PVOID *)&lpBuffer,
                            &RegionSize,
                            MEM_RELEASE);
    }
    else
    {
        FUNC6("Error 0x%08x allocating buffer of %lu bytes\n", errCode, RegionSize);
    }

    return errCode;
}