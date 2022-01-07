
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPVOID ;
typedef int HGLOBAL ;
typedef int HENHMETAFILE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CF_ENHMETAFILE ;
 int ClipboardReadMemoryBlock (int ,int ,int ) ;
 int DeleteEnhMetaFile (int ) ;
 int ERROR_OUTOFMEMORY ;
 int FALSE ;
 int GlobalFree (int ) ;
 int GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int SetClipboardData (int ,int ) ;
 int SetEnhMetaFileBits (int ,int ) ;
 int SetLastError (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL ClipboardReadEnhMetafile(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    HENHMETAFILE hEmf;
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

    hEmf = SetEnhMetaFileBits(dwLength, lpData);

    GlobalUnlock(hData);
    GlobalFree(hData);

    if (!hEmf)
    {
        SetLastError(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    if (!SetClipboardData(CF_ENHMETAFILE, hEmf))
    {
        DeleteEnhMetaFile(hEmf);
        return FALSE;
    }

    return TRUE;
}
