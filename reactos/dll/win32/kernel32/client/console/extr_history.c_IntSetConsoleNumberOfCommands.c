
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_10__ {TYPE_2__* ProcessParameters; } ;
struct TYPE_8__ {int ExeLength; int ExeName; scalar_t__ Unicode2; scalar_t__ Unicode; int NumCommands; int ConsoleHandle; } ;
struct TYPE_6__ {TYPE_3__ SetHistoryNumberCommandsRequest; } ;
struct TYPE_9__ {int Status; TYPE_1__ Data; } ;
struct TYPE_7__ {int ConsoleHandle; } ;
typedef int PVOID ;
typedef int PCSR_CAPTURE_BUFFER ;
typedef int PCSR_API_MESSAGE ;
typedef TYPE_3__* PCONSOLE_SETHISTORYNUMBERCOMMANDS ;
typedef int * LPCVOID ;
typedef int DWORD ;
typedef TYPE_4__ CONSOLE_API_MESSAGE ;
typedef int CHAR ;
typedef scalar_t__ BOOLEAN ;
typedef int BOOL ;


 int BaseSetLastNTError (int ) ;
 int CONSRV_SERVERDLL_INDEX ;
 int CSR_CREATE_API_NUMBER (int ,int ) ;
 int ConsolepSetNumberOfCommands ;
 int CsrAllocateCaptureBuffer (int,int) ;
 int CsrCaptureMessageBuffer (int ,int ,int,int ) ;
 int CsrClientCallServer (int ,int ,int ,int) ;
 int CsrFreeCaptureBuffer (int ) ;
 int DPRINT1 (char*) ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int FALSE ;
 int NT_SUCCESS (int ) ;
 TYPE_5__* NtCurrentPeb () ;
 int SetLastError (int ) ;
 int TRUE ;
 int strlen (int *) ;
 int wcslen (int *) ;

__attribute__((used)) static BOOL
IntSetConsoleNumberOfCommands(DWORD dwNumCommands,
                              LPCVOID lpExeName,
                              BOOLEAN bUnicode)
{
    CONSOLE_API_MESSAGE ApiMessage;
    PCONSOLE_SETHISTORYNUMBERCOMMANDS SetHistoryNumberCommandsRequest = &ApiMessage.Data.SetHistoryNumberCommandsRequest;
    PCSR_CAPTURE_BUFFER CaptureBuffer;

    USHORT NumChars = (USHORT)(lpExeName ? (bUnicode ? wcslen(lpExeName) : strlen(lpExeName)) : 0);

    if (lpExeName == ((void*)0) || NumChars == 0)
    {
        SetLastError(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    SetHistoryNumberCommandsRequest->ConsoleHandle = NtCurrentPeb()->ProcessParameters->ConsoleHandle;
    SetHistoryNumberCommandsRequest->NumCommands = dwNumCommands;
    SetHistoryNumberCommandsRequest->ExeLength = NumChars * (bUnicode ? sizeof(WCHAR) : sizeof(CHAR));
    SetHistoryNumberCommandsRequest->Unicode =
    SetHistoryNumberCommandsRequest->Unicode2 = bUnicode;


    CaptureBuffer = CsrAllocateCaptureBuffer(1, SetHistoryNumberCommandsRequest->ExeLength);
    if (!CaptureBuffer)
    {
        DPRINT1("CsrAllocateCaptureBuffer failed!\n");
        SetLastError(ERROR_NOT_ENOUGH_MEMORY);
        return FALSE;
    }

    CsrCaptureMessageBuffer(CaptureBuffer,
                            (PVOID)lpExeName,
                            SetHistoryNumberCommandsRequest->ExeLength,
                            (PVOID)&SetHistoryNumberCommandsRequest->ExeName);

    CsrClientCallServer((PCSR_API_MESSAGE)&ApiMessage,
                        CaptureBuffer,
                        CSR_CREATE_API_NUMBER(CONSRV_SERVERDLL_INDEX, ConsolepSetNumberOfCommands),
                        sizeof(*SetHistoryNumberCommandsRequest));

    CsrFreeCaptureBuffer(CaptureBuffer);

    if (!NT_SUCCESS(ApiMessage.Status))
    {
        BaseSetLastNTError(ApiMessage.Status);
        return FALSE;
    }

    return TRUE;
}
