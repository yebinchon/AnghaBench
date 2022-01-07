
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int height; int dc; int handle; } ;
struct TYPE_5__ {int tmHeight; } ;
typedef TYPE_1__ TEXTMETRICW ;
typedef TYPE_2__ GdiFont ;


 int CLEARTYPE_QUALITY ;
 int CLIP_DEFAULT_PRECIS ;
 int CreateCompatibleDC (int ) ;
 int CreateFontA (int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int,char const*) ;
 int DEFAULT_CHARSET ;
 int DEFAULT_PITCH ;
 int FALSE ;
 int FF_DONTCARE ;
 int FW_NORMAL ;
 int GetTextMetricsW (int ,TYPE_1__*) ;
 int OUT_DEFAULT_PRECIS ;
 int SelectObject (int ,int ) ;
 scalar_t__ calloc (int,int) ;

GdiFont*
nk_gdifont_create(const char *name, int size)
{
    TEXTMETRICW metric;
    GdiFont *font = (GdiFont*)calloc(1, sizeof(GdiFont));
    if (!font)
        return ((void*)0);
    font->dc = CreateCompatibleDC(0);
    font->handle = CreateFontA(size, 0, 0, 0, FW_NORMAL, FALSE, FALSE, FALSE, DEFAULT_CHARSET, OUT_DEFAULT_PRECIS, CLIP_DEFAULT_PRECIS, CLEARTYPE_QUALITY, DEFAULT_PITCH | FF_DONTCARE, name);
    SelectObject(font->dc, font->handle);
    GetTextMetricsW(font->dc, &metric);
    font->height = metric.tmHeight;
    return font;
}
