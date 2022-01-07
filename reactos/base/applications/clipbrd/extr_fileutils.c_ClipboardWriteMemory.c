
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PDWORD ;
typedef int LPVOID ;
typedef int HGLOBAL ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FILE_BEGIN ;
 int GetClipboardData (int ) ;
 int GlobalLock (int ) ;
 int GlobalSize (int ) ;
 int GlobalUnlock (int ) ;
 scalar_t__ INVALID_SET_FILE_POINTER ;
 scalar_t__ SetFilePointer (int ,int ,int *,int ) ;
 int TRUE ;
 int WriteFile (int ,int ,int ,int *,int *) ;

__attribute__((used)) static BOOL ClipboardWriteMemory(HANDLE hFile, DWORD dwFormat, DWORD dwOffset, PDWORD pdwLength)
{
    HGLOBAL hData;
    LPVOID lpData;
    DWORD dwBytesWritten;

    hData = GetClipboardData(dwFormat);
    if (!hData)
        return FALSE;

    lpData = GlobalLock(hData);
    if (!lpData)
        return FALSE;

    *pdwLength = GlobalSize(hData);

    if (SetFilePointer(hFile, dwOffset, ((void*)0), FILE_BEGIN) == INVALID_SET_FILE_POINTER)
    {
        GlobalUnlock(hData);
        return FALSE;
    }

    if (!WriteFile(hFile, lpData, *pdwLength, &dwBytesWritten, ((void*)0)))
    {
        GlobalUnlock(hData);
        return FALSE;
    }

    GlobalUnlock(hData);

    return TRUE;
}
