
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
typedef int ULONG ;
struct TYPE_10__ {TYPE_2__* ProcessParameters; } ;
struct TYPE_8__ {int SourceLength; int ExeLength; int TargetLength; int * Target; int ExeName; int Source; scalar_t__ Unicode2; scalar_t__ Unicode; int ConsoleHandle; } ;
struct TYPE_6__ {TYPE_3__ ConsoleAliasRequest; } ;
struct TYPE_9__ {int Status; TYPE_1__ Data; } ;
struct TYPE_7__ {int ConsoleHandle; } ;
typedef int PVOID ;
typedef int * PCSR_CAPTURE_BUFFER ;
typedef int PCSR_API_MESSAGE ;
typedef TYPE_3__* PCONSOLE_ADDGETALIAS ;
typedef int * LPCVOID ;
typedef TYPE_4__ CONSOLE_API_MESSAGE ;
typedef int CHAR ;
typedef scalar_t__ BOOLEAN ;
typedef int BOOL ;


 int BaseSetLastNTError (int ) ;
 int CONSRV_SERVERDLL_INDEX ;
 int CSR_CREATE_API_NUMBER (int ,int ) ;
 int ConsolepAddAlias ;
 int * CsrAllocateCaptureBuffer (int,int) ;
 int CsrCaptureMessageBuffer (int *,int ,int,int *) ;
 int CsrClientCallServer (int ,int *,int ,int) ;
 int CsrFreeCaptureBuffer (int *) ;
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
IntAddConsoleAlias(LPCVOID Source,
                   USHORT SourceBufferLength,
                   LPCVOID Target,
                   USHORT TargetBufferLength,
                   LPCVOID lpExeName,
                   BOOLEAN bUnicode)
{
    CONSOLE_API_MESSAGE ApiMessage;
    PCONSOLE_ADDGETALIAS ConsoleAliasRequest = &ApiMessage.Data.ConsoleAliasRequest;
    PCSR_CAPTURE_BUFFER CaptureBuffer;
    ULONG CapturedStrings;

    USHORT NumChars = (USHORT)(lpExeName ? (bUnicode ? wcslen(lpExeName) : strlen(lpExeName)) : 0);

    if (lpExeName == ((void*)0) || NumChars == 0)
    {
        SetLastError(ERROR_INVALID_PARAMETER);
        return FALSE;
    }

    ConsoleAliasRequest->ConsoleHandle = NtCurrentPeb()->ProcessParameters->ConsoleHandle;


    ConsoleAliasRequest->SourceLength = SourceBufferLength;
    ConsoleAliasRequest->ExeLength = NumChars * (bUnicode ? sizeof(WCHAR) : sizeof(CHAR));
    ConsoleAliasRequest->Unicode =
    ConsoleAliasRequest->Unicode2 = bUnicode;

    CapturedStrings = 2;

    if (Target)
    {
        ConsoleAliasRequest->TargetLength = TargetBufferLength;
        CapturedStrings++;
    }
    else
    {
        ConsoleAliasRequest->TargetLength = 0;
    }


    CaptureBuffer = CsrAllocateCaptureBuffer(CapturedStrings,
                                             ConsoleAliasRequest->SourceLength +
                                             ConsoleAliasRequest->ExeLength +
                                             ConsoleAliasRequest->TargetLength);
    if (CaptureBuffer == ((void*)0))
    {
        DPRINT1("CsrAllocateCaptureBuffer failed!\n");
        SetLastError(ERROR_NOT_ENOUGH_MEMORY);
        return FALSE;
    }


    CsrCaptureMessageBuffer(CaptureBuffer,
                            (PVOID)Source,
                            ConsoleAliasRequest->SourceLength,
                            (PVOID*)&ConsoleAliasRequest->Source);

    CsrCaptureMessageBuffer(CaptureBuffer,
                            (PVOID)lpExeName,
                            ConsoleAliasRequest->ExeLength,
                            (PVOID*)&ConsoleAliasRequest->ExeName);

    if (Target)
    {
        CsrCaptureMessageBuffer(CaptureBuffer,
                                (PVOID)Target,
                                ConsoleAliasRequest->TargetLength,
                                (PVOID*)&ConsoleAliasRequest->Target);
    }
    else
    {
        ConsoleAliasRequest->Target = ((void*)0);
    }

    CsrClientCallServer((PCSR_API_MESSAGE)&ApiMessage,
                        CaptureBuffer,
                        CSR_CREATE_API_NUMBER(CONSRV_SERVERDLL_INDEX, ConsolepAddAlias),
                        sizeof(*ConsoleAliasRequest));

    CsrFreeCaptureBuffer(CaptureBuffer);

    if (!NT_SUCCESS(ApiMessage.Status))
    {
        BaseSetLastNTError(ApiMessage.Status);
        return FALSE;
    }

    return TRUE;
}
