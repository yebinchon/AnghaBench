
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_color {int dummy; } ;
typedef int * HPEN ;
typedef int * HGDIOBJ ;
typedef int HDC ;
typedef int COLORREF ;


 int * CreatePen (int ,unsigned short,int ) ;
 int DC_PEN ;
 int DeleteObject (int *) ;
 int * GetStockObject (int ) ;
 int NULL_BRUSH ;
 int PS_SOLID ;
 int Rectangle (int ,short,short,short,short) ;
 int RoundRect (int ,short,short,short,short,unsigned short,unsigned short) ;
 int * SelectObject (int ,int *) ;
 int SetDCPenColor (int ,int ) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_stroke_rect(HDC dc, short x, short y, unsigned short w,
    unsigned short h, unsigned short r, unsigned short line_thickness, struct nk_color col)
{
    COLORREF color = convert_color(col);

    HPEN pen = ((void*)0);
    if (line_thickness == 1) {
        SetDCPenColor(dc, color);
    } else {
        pen = CreatePen(PS_SOLID, line_thickness, color);
        SelectObject(dc, pen);
    }

    HGDIOBJ br = SelectObject(dc, GetStockObject(NULL_BRUSH));
    if (r == 0) {
        Rectangle(dc, x, y, x + w, y + h);
    } else {
        RoundRect(dc, x, y, x + w, y + h, r, r);
    }
    SelectObject(dc, br);

    if (pen) {
        SelectObject(dc, GetStockObject(DC_PEN));
        DeleteObject(pen);
    }
}
