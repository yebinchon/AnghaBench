
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
struct TYPE_8__ {int ExeLength; int HistoryLength; int ExeName; scalar_t__ Unicode2; scalar_t__ Unicode; int ConsoleHandle; } ;
struct TYPE_6__ {TYPE_3__ GetCommandHistoryLengthRequest; } ;
struct TYPE_9__ {int Status; TYPE_1__ Data; } ;
struct TYPE_7__ {int ConsoleHandle; } ;
typedef int PVOID ;
typedef int PCSR_CAPTURE_BUFFER ;
typedef int PCSR_API_MESSAGE ;
typedef TYPE_3__* PCONSOLE_GETCOMMANDHISTORYLENGTH ;
typedef int * LPCVOID ;
typedef int DWORD ;
typedef TYPE_4__ CONSOLE_API_MESSAGE ;
typedef int CHAR ;
typedef scalar_t__ BOOL ;


 int BaseSetLastNTError (int ) ;
 int CONSRV_SERVERDLL_INDEX ;
 int CSR_CREATE_API_NUMBER (int ,int ) ;
 int ConsolepGetCommandHistoryLength ;
 int CsrAllocateCaptureBuffer (int,int) ;
 int CsrCaptureMessageBuffer (int ,int ,int,int ) ;
 int CsrClientCallServer (int ,int ,int ,int) ;
 int CsrFreeCaptureBuffer (int ) ;
 int DPRINT1 (char*) ;
 int ERROR_INVALID_PARAMETER ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int NT_SUCCESS (int ) ;
 TYPE_5__* NtCurrentPeb () ;
 int SetLastError (int ) ;
 int strlen (int *) ;
 int wcslen (int *) ;

__attribute__((used)) static DWORD
IntGetConsoleCommandHistoryLength(LPCVOID lpExeName, BOOL bUnicode)
{
    CONSOLE_API_MESSAGE ApiMessage;
    PCONSOLE_GETCOMMANDHISTORYLENGTH GetCommandHistoryLengthRequest = &ApiMessage.Data.GetCommandHistoryLengthRequest;
    PCSR_CAPTURE_BUFFER CaptureBuffer;

    USHORT NumChars = (USHORT)(lpExeName ? (bUnicode ? wcslen(lpExeName) : strlen(lpExeName)) : 0);

    if (lpExeName == ((void*)0) || NumChars == 0)
    {
        SetLastError(ERROR_INVALID_PARAMETER);
        return 0;
    }

    GetCommandHistoryLengthRequest->ConsoleHandle = NtCurrentPeb()->ProcessParameters->ConsoleHandle;
    GetCommandHistoryLengthRequest->ExeLength = NumChars * (bUnicode ? sizeof(WCHAR) : sizeof(CHAR));
    GetCommandHistoryLengthRequest->Unicode =
    GetCommandHistoryLengthRequest->Unicode2 = bUnicode;


    CaptureBuffer = CsrAllocateCaptureBuffer(1, GetCommandHistoryLengthRequest->ExeLength);
    if (!CaptureBuffer)
    {
        DPRINT1("CsrAllocateCaptureBuffer failed!\n");
        SetLastError(ERROR_NOT_ENOUGH_MEMORY);
        return 0;
    }

    CsrCaptureMessageBuffer(CaptureBuffer,
                            (PVOID)lpExeName,
                            GetCommandHistoryLengthRequest->ExeLength,
                            (PVOID)&GetCommandHistoryLengthRequest->ExeName);

    CsrClientCallServer((PCSR_API_MESSAGE)&ApiMessage,
                        CaptureBuffer,
                        CSR_CREATE_API_NUMBER(CONSRV_SERVERDLL_INDEX, ConsolepGetCommandHistoryLength),
                        sizeof(*GetCommandHistoryLengthRequest));

    CsrFreeCaptureBuffer(CaptureBuffer);

    if (!NT_SUCCESS(ApiMessage.Status))
    {
        BaseSetLastNTError(ApiMessage.Status);
        return 0;
    }

    return GetCommandHistoryLengthRequest->HistoryLength;
}
