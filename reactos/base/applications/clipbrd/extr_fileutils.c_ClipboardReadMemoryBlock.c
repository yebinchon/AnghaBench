
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int * HGLOBAL ;
typedef int HANDLE ;
typedef int DWORD ;


 int FILE_BEGIN ;
 int GHND ;
 int * GlobalAlloc (int ,int ) ;
 int GlobalFree (int *) ;
 int GlobalLock (int *) ;
 int GlobalUnlock (int *) ;
 scalar_t__ INVALID_SET_FILE_POINTER ;
 int ReadFile (int ,int ,int ,int *,int *) ;
 scalar_t__ SetFilePointer (int ,int ,int *,int ) ;

__attribute__((used)) static HGLOBAL ClipboardReadMemoryBlock(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    HGLOBAL hData;
    LPVOID lpData;
    DWORD dwBytesRead;

    hData = GlobalAlloc(GHND, dwLength);
    if (!hData)
        return ((void*)0);

    lpData = GlobalLock(hData);
    if (!lpData)
    {
        GlobalFree(hData);
        return ((void*)0);
    }

    if (SetFilePointer(hFile, dwOffset, ((void*)0), FILE_BEGIN) == INVALID_SET_FILE_POINTER)
    {
        GlobalUnlock(hData);
        GlobalFree(hData);
        return ((void*)0);
    }

    if (!ReadFile(hFile, lpData, dwLength, &dwBytesRead, ((void*)0)))
    {
        GlobalUnlock(hData);
        GlobalFree(hData);
        return ((void*)0);
    }

    GlobalUnlock(hData);

    return hData;
}
