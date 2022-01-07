
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
struct nk_color {int dummy; } ;
typedef int WCHAR ;
struct TYPE_3__ {int handle; } ;
typedef int HDC ;
typedef TYPE_1__ GdiFont ;


 int CP_UTF8 ;
 int ETO_OPAQUE ;
 int ExtTextOutW (int ,short,short,int ,int *,int *,int,int *) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 int SelectObject (int ,int ) ;
 int SetBkColor (int ,int ) ;
 int SetTextColor (int ,int ) ;
 scalar_t__ _alloca (int) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_draw_text(HDC dc, short x, short y, unsigned short w, unsigned short h,
    const char *text, int len, GdiFont *font, struct nk_color cbg, struct nk_color cfg)
{
    int wsize;
    WCHAR* wstr;

    if(!text || !font || !len) return;

    wsize = MultiByteToWideChar(CP_UTF8, 0, text, len, ((void*)0), 0);
    wstr = (WCHAR*)_alloca(wsize * sizeof(wchar_t));
    MultiByteToWideChar(CP_UTF8, 0, text, len, wstr, wsize);

    SetBkColor(dc, convert_color(cbg));
    SetTextColor(dc, convert_color(cfg));

    SelectObject(dc, font->handle);
    ExtTextOutW(dc, x, y, ETO_OPAQUE, ((void*)0), wstr, wsize, ((void*)0));
}
