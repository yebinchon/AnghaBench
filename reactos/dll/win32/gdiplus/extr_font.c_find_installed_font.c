
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct font_metrics {int facename; } ;
typedef int WCHAR ;
struct TYPE_3__ {int lfFaceName; } ;
typedef int LPARAM ;
typedef TYPE_1__ LOGFONTW ;
typedef int HFONT ;
typedef int HDC ;
typedef int GpStatus ;


 int CreateCompatibleDC (int ) ;
 int CreateFontIndirectW (TYPE_1__*) ;
 int DeleteDC (int ) ;
 int DeleteObject (int ) ;
 int EnumFontFamiliesW (int ,int const*,int ,int ) ;
 int FontFamilyNotFound ;
 int NotTrueTypeFont ;
 int Ok ;
 int SelectObject (int ,int ) ;
 scalar_t__ get_font_metrics (int ,struct font_metrics*) ;
 int is_font_installed_proc ;
 int strcpyW (int ,int ) ;

__attribute__((used)) static GpStatus find_installed_font(const WCHAR *name, struct font_metrics *fm)
{
    LOGFONTW lf;
    HDC hdc = CreateCompatibleDC(0);
    GpStatus ret = FontFamilyNotFound;

    if(!EnumFontFamiliesW(hdc, name, is_font_installed_proc, (LPARAM)&lf))
    {
        HFONT hfont, old_font;

        strcpyW(fm->facename, lf.lfFaceName);

        hfont = CreateFontIndirectW(&lf);
        old_font = SelectObject(hdc, hfont);
        ret = get_font_metrics(hdc, fm) ? Ok : NotTrueTypeFont;
        SelectObject(hdc, old_font);
        DeleteObject(hfont);
    }

    DeleteDC(hdc);
    return ret;
}
