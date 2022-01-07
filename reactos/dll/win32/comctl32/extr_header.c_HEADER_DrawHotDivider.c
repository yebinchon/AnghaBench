
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int clrHighlight; } ;
typedef int RECT ;
typedef int HEADER_INFO ;
typedef int HDC ;
typedef int HBRUSH ;


 int CreateSolidBrush (int ) ;
 int DeleteObject (int ) ;
 int FillRect (int ,int *,int ) ;
 int HEADER_GetHotDividerRect (int const*,int *) ;
 TYPE_1__ comctl32_color ;

__attribute__((used)) static void
HEADER_DrawHotDivider(const HEADER_INFO *infoPtr, HDC hdc)
{
    HBRUSH brush;
    RECT r;

    HEADER_GetHotDividerRect(infoPtr, &r);
    brush = CreateSolidBrush(comctl32_color.clrHighlight);
    FillRect(hdc, &r, brush);
    DeleteObject(brush);
}
