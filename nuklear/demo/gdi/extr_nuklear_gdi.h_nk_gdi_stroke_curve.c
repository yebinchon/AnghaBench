
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nk_vec2i {int y; int x; } ;
struct nk_color {int dummy; } ;
struct TYPE_3__ {int member_1; int member_0; } ;
typedef TYPE_1__ POINT ;
typedef int * HPEN ;
typedef int HDC ;
typedef int COLORREF ;


 int * CreatePen (int ,unsigned short,int ) ;
 int DC_PEN ;
 int DeleteObject (int *) ;
 int * GetStockObject (int ) ;
 int OPAQUE ;
 int PS_SOLID ;
 int PolyBezier (int ,TYPE_1__*,int) ;
 int SelectObject (int ,int *) ;
 int SetDCBrushColor (int ,int ) ;
 int SetDCPenColor (int ,int ) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_stroke_curve(HDC dc, struct nk_vec2i p1,
    struct nk_vec2i p2, struct nk_vec2i p3, struct nk_vec2i p4,
    unsigned short line_thickness, struct nk_color col)
{
    COLORREF color = convert_color(col);
    POINT p[] = {
        { p1.x, p1.y },
        { p2.x, p2.y },
        { p3.x, p3.y },
        { p4.x, p4.y },
    };

    HPEN pen = ((void*)0);
    if (line_thickness == 1) {
        SetDCPenColor(dc, color);
    } else {
        pen = CreatePen(PS_SOLID, line_thickness, color);
        SelectObject(dc, pen);
    }

    SetDCBrushColor(dc, OPAQUE);
    PolyBezier(dc, p, 4);

    if (pen) {
        SelectObject(dc, GetStockObject(DC_PEN));
        DeleteObject(pen);
    }
}
