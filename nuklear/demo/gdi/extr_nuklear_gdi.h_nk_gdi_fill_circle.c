
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_color {int dummy; } ;
typedef int HDC ;
typedef int COLORREF ;


 int Ellipse (int ,short,short,short,short) ;
 int SetDCBrushColor (int ,int ) ;
 int SetDCPenColor (int ,int ) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_fill_circle(HDC dc, short x, short y, unsigned short w,
    unsigned short h, struct nk_color col)
{
    COLORREF color = convert_color(col);
    SetDCBrushColor(dc, color);
    SetDCPenColor(dc, color);
    Ellipse(dc, x, y, x + w, y + h);
}
