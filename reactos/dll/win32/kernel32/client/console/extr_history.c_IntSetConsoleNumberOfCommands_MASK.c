#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
struct TYPE_10__ {TYPE_2__* ProcessParameters; } ;
struct TYPE_8__ {int ExeLength; int /*<<< orphan*/  ExeName; scalar_t__ Unicode2; scalar_t__ Unicode; int /*<<< orphan*/  NumCommands; int /*<<< orphan*/  ConsoleHandle; } ;
struct TYPE_6__ {TYPE_3__ SetHistoryNumberCommandsRequest; } ;
struct TYPE_9__ {int /*<<< orphan*/  Status; TYPE_1__ Data; } ;
struct TYPE_7__ {int /*<<< orphan*/  ConsoleHandle; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PCSR_CAPTURE_BUFFER ;
typedef  int /*<<< orphan*/  PCSR_API_MESSAGE ;
typedef  TYPE_3__* PCONSOLE_SETHISTORYNUMBERCOMMANDS ;
typedef  int /*<<< orphan*/ * LPCVOID ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_4__ CONSOLE_API_MESSAGE ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BOOLEAN ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CONSRV_SERVERDLL_INDEX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ConsolepSetNumberOfCommands ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  ERROR_NOT_ENOUGH_MEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static BOOL
FUNC12(DWORD dwNumCommands,
                              LPCVOID lpExeName,
                              BOOLEAN bUnicode)
{
    CONSOLE_API_MESSAGE ApiMessage;
    PCONSOLE_SETHISTORYNUMBERCOMMANDS SetHistoryNumberCommandsRequest = &ApiMessage.Data.SetHistoryNumberCommandsRequest;
    PCSR_CAPTURE_BUFFER CaptureBuffer;

    USHORT NumChars = (USHORT)(lpExeName ? (bUnicode ? FUNC11(lpExeName) : FUNC10(lpExeName)) : 0);

    if (lpExeName == NULL || NumChars == 0)
    {
        FUNC9(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    SetHistoryNumberCommandsRequest->ConsoleHandle = FUNC8()->ProcessParameters->ConsoleHandle;
    SetHistoryNumberCommandsRequest->NumCommands   = dwNumCommands;
    SetHistoryNumberCommandsRequest->ExeLength     = NumChars * (bUnicode ? sizeof(WCHAR) : sizeof(CHAR));
    SetHistoryNumberCommandsRequest->Unicode  =
    SetHistoryNumberCommandsRequest->Unicode2 = bUnicode;

    // CaptureBuffer = CsrAllocateCaptureBuffer(1, IntStringSize(lpExeName, bUnicode));
    CaptureBuffer = FUNC2(1, SetHistoryNumberCommandsRequest->ExeLength);
    if (!CaptureBuffer)
    {
        FUNC6("CsrAllocateCaptureBuffer failed!\n");
        FUNC9(ERROR_NOT_ENOUGH_MEMORY);
        return FALSE;
    }

    FUNC3(CaptureBuffer,
                            (PVOID)lpExeName,
                            SetHistoryNumberCommandsRequest->ExeLength,
                            (PVOID)&SetHistoryNumberCommandsRequest->ExeName);

    FUNC4((PCSR_API_MESSAGE)&ApiMessage,
                        CaptureBuffer,
                        FUNC1(CONSRV_SERVERDLL_INDEX, ConsolepSetNumberOfCommands),
                        sizeof(*SetHistoryNumberCommandsRequest));

    FUNC5(CaptureBuffer);

    if (!FUNC7(ApiMessage.Status))
    {
        FUNC0(ApiMessage.Status);
        return FALSE;
    }

    return TRUE;
}