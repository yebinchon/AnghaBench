
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_6__ {scalar_t__ ptr; } ;
typedef TYPE_1__ nk_handle ;
typedef int WCHAR ;
struct TYPE_8__ {int dc; } ;
struct TYPE_7__ {scalar_t__ cx; } ;
typedef TYPE_2__ SIZE ;
typedef TYPE_3__ GdiFont ;


 int CP_UTF8 ;
 scalar_t__ GetTextExtentPoint32W (int ,int *,int,TYPE_2__*) ;
 int MultiByteToWideChar (int ,int ,char const*,int,int *,int) ;
 scalar_t__ _alloca (int) ;

__attribute__((used)) static float
nk_gdifont_get_text_width(nk_handle handle, float height, const char *text, int len)
{
    GdiFont *font = (GdiFont*)handle.ptr;
    SIZE size;
    int wsize;
    WCHAR* wstr;
    if (!font || !text)
        return 0;

    wsize = MultiByteToWideChar(CP_UTF8, 0, text, len, ((void*)0), 0);
    wstr = (WCHAR*)_alloca(wsize * sizeof(wchar_t));
    MultiByteToWideChar(CP_UTF8, 0, text, len, wstr, wsize);
    if (GetTextExtentPoint32W(font->dc, wstr, wsize, &size))
        return (float)size.cx;
    return -1.0f;
}
