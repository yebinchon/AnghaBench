
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPLOGPALETTE ;
typedef int HPALETTE ;
typedef int HGLOBAL ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;


 int CF_PALETTE ;
 int ClipboardReadMemoryBlock (int ,int ,int ) ;
 int CreatePalette (int ) ;
 int DeleteObject (int ) ;
 int ERROR_OUTOFMEMORY ;
 int FALSE ;
 int GlobalFree (int ) ;
 int GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int SetClipboardData (int ,int ) ;
 int SetLastError (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL ClipboardReadPalette(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    LPLOGPALETTE lpPalette;
    HPALETTE hPalette;
    HGLOBAL hData;

    hData = ClipboardReadMemoryBlock(hFile, dwOffset, dwLength);
    if (!hData)
    {
        return FALSE;
    }

    lpPalette = GlobalLock(hData);
    if (!lpPalette)
    {
        GlobalFree(hData);
        return FALSE;
    }

    hPalette = CreatePalette(lpPalette);
    if (!hPalette)
    {
        GlobalUnlock(hData);
        GlobalFree(hData);
        SetLastError(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    GlobalUnlock(hData);
    GlobalFree(hData);

    if (!SetClipboardData(CF_PALETTE, hPalette))
    {
        DeleteObject(hPalette);
        return FALSE;
    }

    return TRUE;
}
