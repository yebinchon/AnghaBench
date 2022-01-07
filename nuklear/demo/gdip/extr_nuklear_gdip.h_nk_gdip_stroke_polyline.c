
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_vec2i {int y; int x; } ;
struct nk_color {int dummy; } ;
struct TYPE_2__ {int pen; int memory; } ;
typedef int REAL ;


 int GdipDrawLineI (int ,int ,int ,int ,int ,int ) ;
 int GdipSetPenColor (int ,int ) ;
 int GdipSetPenWidth (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_stroke_polyline(const struct nk_vec2i *pnts,
    int count, unsigned short line_thickness, struct nk_color col)
{
    GdipSetPenWidth(gdip.pen, (REAL)line_thickness);
    GdipSetPenColor(gdip.pen, convert_color(col));
    if (count > 0) {
        int i;
        for (i = 1; i < count; ++i)
            GdipDrawLineI(gdip.memory, gdip.pen, pnts[i-1].x, pnts[i-1].y, pnts[i].x, pnts[i].y);
    }
}
