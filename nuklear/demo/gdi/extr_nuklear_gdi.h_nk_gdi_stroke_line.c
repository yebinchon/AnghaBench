
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_color {int dummy; } ;
typedef int * HPEN ;
typedef int HDC ;
typedef int COLORREF ;


 int * CreatePen (int ,unsigned int,int ) ;
 int DC_PEN ;
 int DeleteObject (int *) ;
 int * GetStockObject (int ) ;
 int LineTo (int ,short,short) ;
 int MoveToEx (int ,short,short,int *) ;
 int PS_SOLID ;
 int SelectObject (int ,int *) ;
 int SetDCPenColor (int ,int ) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_stroke_line(HDC dc, short x0, short y0, short x1,
    short y1, unsigned int line_thickness, struct nk_color col)
{
    COLORREF color = convert_color(col);

    HPEN pen = ((void*)0);
    if (line_thickness == 1) {
        SetDCPenColor(dc, color);
    } else {
        pen = CreatePen(PS_SOLID, line_thickness, color);
        SelectObject(dc, pen);
    }

    MoveToEx(dc, x0, y0, ((void*)0));
    LineTo(dc, x1, y1);

    if (pen) {
        SelectObject(dc, GetStockObject(DC_PEN));
        DeleteObject(pen);
    }
}
