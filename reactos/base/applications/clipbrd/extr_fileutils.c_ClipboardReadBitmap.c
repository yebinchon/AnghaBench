
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* bmBits; } ;
typedef TYPE_1__* LPBITMAP ;
typedef int HGLOBAL ;
typedef int HBITMAP ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int BOOL ;
typedef int BITMAP ;


 int CF_BITMAP ;
 int ClipboardReadMemoryBlock (int ,int ,int ) ;
 int CreateBitmapIndirect (TYPE_1__*) ;
 int DeleteObject (int ) ;
 int ERROR_OUTOFMEMORY ;
 int FALSE ;
 int GlobalFree (int ) ;
 TYPE_1__* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int SetClipboardData (int ,int ) ;
 int SetLastError (int ) ;
 int TRUE ;

__attribute__((used)) static BOOL ClipboardReadBitmap(HANDLE hFile, DWORD dwOffset, DWORD dwLength)
{
    HGLOBAL hData;
    HBITMAP hBitmap;
    LPBITMAP lpBitmap;

    hData = ClipboardReadMemoryBlock(hFile, dwOffset, dwLength);
    if (!hData)
    {
        return FALSE;
    }

    lpBitmap = GlobalLock(hData);
    if (!lpBitmap)
    {
        GlobalFree(hData);
        return FALSE;
    }

    lpBitmap->bmBits = lpBitmap + sizeof(BITMAP) + 1;

    hBitmap = CreateBitmapIndirect(lpBitmap);

    GlobalUnlock(hData);
    GlobalFree(hData);

    if (!hBitmap)
    {
        SetLastError(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    if (!SetClipboardData(CF_BITMAP, hBitmap))
    {
        DeleteObject(hBitmap);
        return FALSE;
    }

    return TRUE;
}
