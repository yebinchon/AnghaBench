
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_vec2i {int y; int x; } ;
struct nk_color {int dummy; } ;
typedef int * HPEN ;
typedef int HDC ;
typedef int COLORREF ;


 int * CreatePen (int ,unsigned short,int ) ;
 int DC_PEN ;
 int DeleteObject (int *) ;
 int * GetStockObject (int ) ;
 int LineTo (int ,int ,int ) ;
 int MoveToEx (int ,int ,int ,int *) ;
 int PS_SOLID ;
 int SelectObject (int ,int *) ;
 int SetDCPenColor (int ,int ) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_stroke_polygon(HDC dc, const struct nk_vec2i *pnts, int count,
    unsigned short line_thickness, struct nk_color col)
{
    COLORREF color = convert_color(col);
    HPEN pen = ((void*)0);
    if (line_thickness == 1) {
        SetDCPenColor(dc, color);
    } else {
        pen = CreatePen(PS_SOLID, line_thickness, color);
        SelectObject(dc, pen);
    }

    if (count > 0) {
        int i;
        MoveToEx(dc, pnts[0].x, pnts[0].y, ((void*)0));
        for (i = 1; i < count; ++i)
            LineTo(dc, pnts[i].x, pnts[i].y);
        LineTo(dc, pnts[0].x, pnts[0].y);
    }

    if (pen) {
        SelectObject(dc, GetStockObject(DC_PEN));
        DeleteObject(pen);
    }
}
