
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ INT ;
typedef int HPEN ;
typedef int HDC ;


 int CreatePen (int ,int,int ) ;
 int DeleteObject (int ) ;
 int GetSysColor (scalar_t__) ;
 int LineTo (int ,scalar_t__,scalar_t__) ;
 int MoveToEx (int ,scalar_t__,scalar_t__,int *) ;
 int PS_SOLID ;
 int SelectObject (int ,int ) ;

__attribute__((used)) static void
REBAR_DrawChevron (HDC hdc, INT left, INT top, INT colorRef)
{
    INT x, y;
    HPEN hPen, hOldPen;

    if (!(hPen = CreatePen( PS_SOLID, 1, GetSysColor( colorRef )))) return;
    hOldPen = SelectObject ( hdc, hPen );
    x = left + 2;
    y = top;
    MoveToEx (hdc, x, y, ((void*)0));
    LineTo (hdc, x+5, y++); x++;
    MoveToEx (hdc, x, y, ((void*)0));
    LineTo (hdc, x+3, y++); x++;
    MoveToEx (hdc, x, y, ((void*)0));
    LineTo (hdc, x+1, y);
    SelectObject( hdc, hOldPen );
    DeleteObject( hPen );
}
