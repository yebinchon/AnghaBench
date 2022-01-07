
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HPALETTE ;
typedef int HDC ;
typedef int BOOL ;


 int CF_PALETTE ;
 int FALSE ;
 scalar_t__ GDI_ERROR ;
 int GetClipboardData (int ) ;
 int IsClipboardFormatAvailable (int ) ;
 scalar_t__ RealizePalette (int ) ;
 int SelectPalette (int ,int ,int) ;

BOOL RealizeClipboardPalette(HDC hdc)
{
    BOOL Success;
    HPALETTE hPalette, hOldPalette;

    if (!IsClipboardFormatAvailable(CF_PALETTE))
        return FALSE;

    hPalette = GetClipboardData(CF_PALETTE);
    if (!hPalette)
        return FALSE;

    hOldPalette = SelectPalette(hdc, hPalette, FALSE);
    if (!hOldPalette)
        return FALSE;

    Success = (RealizePalette(hdc) != GDI_ERROR);

    SelectPalette(hdc, hOldPalette, FALSE);

    return Success;
}
