
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nk_vec2i {int y; int x; } ;
struct nk_color {int dummy; } ;
struct TYPE_5__ {int brush; int memory; } ;
struct TYPE_4__ {int y; int x; } ;
typedef TYPE_1__ POINT ;


 int FillModeAlternate ;
 int GdipFillPolygonI (int ,int ,TYPE_1__*,int,int ) ;
 int GdipSetSolidFillColor (int ,int ) ;
 int MAX_POINTS ;
 int convert_color (struct nk_color) ;
 TYPE_2__ gdip ;

__attribute__((used)) static void
nk_gdip_fill_polygon(const struct nk_vec2i *pnts, int count, struct nk_color col)
{
    int i = 0;

    POINT points[64];
    GdipSetSolidFillColor(gdip.brush, convert_color(col));
    for (i = 0; i < count && i < 64; ++i) {
        points[i].x = pnts[i].x;
        points[i].y = pnts[i].y;
    }
    GdipFillPolygonI(gdip.memory, gdip.brush, points, i, FillModeAlternate);

}
