
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_3__ {short member_0; short member_1; } ;
typedef TYPE_1__ POINT ;
typedef int * HPEN ;
typedef int HDC ;
typedef int COLORREF ;


 int * CreatePen (int ,unsigned short,int ) ;
 int DC_PEN ;
 int DeleteObject (int *) ;
 int * GetStockObject (int ) ;
 int PS_SOLID ;
 int Polyline (int ,TYPE_1__*,int) ;
 int SelectObject (int ,int *) ;
 int SetDCPenColor (int ,int ) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_stroke_triangle(HDC dc, short x0, short y0, short x1,
    short y1, short x2, short y2, unsigned short line_thickness, struct nk_color col)
{
    COLORREF color = convert_color(col);
    POINT points[] = {
        { x0, y0 },
        { x1, y1 },
        { x2, y2 },
        { x0, y0 },
    };

    HPEN pen = ((void*)0);
    if (line_thickness == 1) {
        SetDCPenColor(dc, color);
    } else {
        pen = CreatePen(PS_SOLID, line_thickness, color);
        SelectObject(dc, pen);
    }

    Polyline(dc, points, 4);

    if (pen) {
        SelectObject(dc, GetStockObject(DC_PEN));
        DeleteObject(pen);
    }
}
