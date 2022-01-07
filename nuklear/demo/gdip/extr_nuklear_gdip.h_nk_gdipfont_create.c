
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wchar_t ;
typedef scalar_t__ WCHAR ;
struct TYPE_3__ {int handle; } ;
typedef int REAL ;
typedef int GpFontFamily ;
typedef TYPE_1__ GdipFont ;


 int CP_UTF8 ;
 int FontStyleRegular ;
 int GdipCreateFont (int *,int ,int ,int ,int *) ;
 int GdipCreateFontFamilyFromName (scalar_t__*,int *,int **) ;
 int GdipDeleteFontFamily (int *) ;
 int MultiByteToWideChar (int ,int ,char const*,int,scalar_t__*,int) ;
 int UnitPixel ;
 scalar_t__ _alloca (int) ;
 scalar_t__ calloc (int,int) ;

GdipFont*
nk_gdipfont_create(const char *name, int size)
{
    GdipFont *font = (GdipFont*)calloc(1, sizeof(GdipFont));
    GpFontFamily *family;

    int wsize = MultiByteToWideChar(CP_UTF8, 0, name, -1, ((void*)0), 0);
    WCHAR* wname = (WCHAR*)_alloca((wsize + 1) * sizeof(wchar_t));
    MultiByteToWideChar(CP_UTF8, 0, name, -1, wname, wsize);
    wname[wsize] = 0;

    GdipCreateFontFamilyFromName(wname, ((void*)0), &family);
    GdipCreateFont(family, (REAL)size, FontStyleRegular, UnitPixel, &font->handle);
    GdipDeleteFontFamily(family);

    return font;
}
