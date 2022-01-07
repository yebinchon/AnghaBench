
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct nk_color {int dummy; } ;
typedef int WCHAR ;
struct TYPE_8__ {int brush; int format; int memory; } ;
struct TYPE_7__ {int handle; } ;
struct TYPE_6__ {int member_3; int member_2; int member_1; int member_0; } ;
typedef TYPE_1__ RectF ;
typedef TYPE_2__ GdipFont ;
typedef int FLOAT ;


 int CP_UTF8 ;
 int GdipDrawString (int ,int *,int,int ,TYPE_1__*,int ,int ) ;
 int GdipSetSolidFillColor (int ,int ) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ _alloca (int) ;
 int convert_color (struct nk_color) ;
 TYPE_4__ gdip ;

__attribute__((used)) static void
nk_gdip_draw_text(short x, short y, unsigned short w, unsigned short h,
    const char *text, int len, GdipFont *font, struct nk_color cbg, struct nk_color cfg)
{
    int wsize;
    WCHAR* wstr;
    RectF layout = { (FLOAT)x, (FLOAT)y, (FLOAT)w, (FLOAT)h };

    if(!text || !font || !len) return;

    wsize = MultiByteToWideChar(CP_UTF8, 0, text, len, ((void*)0), 0);
    wstr = (WCHAR*)_alloca(wsize * sizeof(wchar_t));
    MultiByteToWideChar(CP_UTF8, 0, text, len, wstr, wsize);

    GdipSetSolidFillColor(gdip.brush, convert_color(cfg));
    GdipDrawString(gdip.memory, wstr, wsize, font->handle, &layout, gdip.format, gdip.brush);
}
