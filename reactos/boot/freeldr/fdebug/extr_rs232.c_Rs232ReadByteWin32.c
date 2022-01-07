
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int GetLastError () ;
 int ReadFile (int ,int *,int,int*,int *) ;
 int TEXT (char*) ;
 int TRUE ;
 int _tprintf (int ,int) ;
 int hPortHandle ;

BOOL Rs232ReadByteWin32(BYTE* DataByte)
{
    DWORD BytesRead = 0;
    DWORD ErrorCode;


    if (!ReadFile(hPortHandle, DataByte, 1, &BytesRead, ((void*)0)))
    {
        ErrorCode = GetLastError();

        _tprintf(TEXT("ReadFile() failed. GetLastError() = %lu.\n"), ErrorCode);

        return FALSE;
    }



    if (BytesRead != 1)
    {
        return FALSE;
    }

    return TRUE;
}
