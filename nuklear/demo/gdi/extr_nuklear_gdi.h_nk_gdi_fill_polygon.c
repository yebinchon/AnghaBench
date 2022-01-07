
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nk_vec2i {int y; int x; } ;
struct nk_color {int dummy; } ;
struct TYPE_3__ {int y; int x; } ;
typedef TYPE_1__ POINT ;
typedef int HDC ;
typedef int COLORREF ;


 int MAX_POINTS ;
 int Polygon (int ,TYPE_1__*,int) ;
 int SetDCBrushColor (int ,int ) ;
 int SetDCPenColor (int ,int ) ;
 int convert_color (struct nk_color) ;

__attribute__((used)) static void
nk_gdi_fill_polygon(HDC dc, const struct nk_vec2i *pnts, int count, struct nk_color col)
{
    int i = 0;

    POINT points[64];
    COLORREF color = convert_color(col);
    SetDCBrushColor(dc, color);
    SetDCPenColor(dc, color);
    for (i = 0; i < count && i < 64; ++i) {
        points[i].x = pnts[i].x;
        points[i].y = pnts[i].y;
    }
    Polygon(dc, points, i);

}
