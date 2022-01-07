
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int TEXT (char*) ;
 int TRUE ;
 int WriteFile (int ,int *,int,int*,int *) ;
 int _tprintf (int ,int) ;
 int hPortHandle ;

BOOL Rs232WriteByteWin32(BYTE DataByte)
{
    DWORD BytesWritten = 0;
    BOOL Success;
    DWORD ErrorCode;

    Success = WriteFile(hPortHandle, &DataByte, 1, &BytesWritten, ((void*)0));

    if (!Success || BytesWritten != 1)
    {
        ErrorCode = GetLastError();

        _tprintf(TEXT("WriteFile() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }

    return TRUE;
}
