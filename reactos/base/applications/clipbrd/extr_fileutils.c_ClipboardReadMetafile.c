
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int HMETAFILE ;
typedef int HGLOBAL ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CF_METAFILEPICT ;
 int ClipboardReadMemoryBlock (int ,int ,int ) ;
 int DeleteMetaFile (int ) ;
 int ERROR_OUTOFMEMORY ;
 int FALSE ;
 int GlobalFree (int ) ;
 int GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int SetClipboardData (int ,int ) ;
 int SetLastError (int ) ;
 int SetMetaFileBitsEx (int ,int ) ;
 int TRUE ;

__attribute__((used)) static BOOL ClipboardReadMetafile(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    HMETAFILE hMf;
    HGLOBAL hData;
    LPVOID lpData;

    hData = ClipboardReadMemoryBlock(hFile, dwOffset, dwLength);
    if (!hData)
    {
        return FALSE;
    }

    lpData = GlobalLock(hData);
    if (!lpData)
    {
        GlobalFree(hData);
        return FALSE;
    }

    hMf = SetMetaFileBitsEx(dwLength, lpData);

    GlobalUnlock(hData);
    GlobalFree(hData);

    if (!hMf)
    {
        SetLastError(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    if (!SetClipboardData(CF_METAFILEPICT, hMf))
    {
        DeleteMetaFile(hMf);
        return FALSE;
    }

    return TRUE;
}
