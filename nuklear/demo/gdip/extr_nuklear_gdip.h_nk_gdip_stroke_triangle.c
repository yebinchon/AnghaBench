
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_5__ {int pen; int memory; } ;
struct TYPE_4__ {short member_0; short member_1; } ;
typedef int REAL ;
typedef TYPE_1__ POINT ;


 int GdipDrawPolygonI (int ,int ,TYPE_1__*,int) ;
 int GdipSetPenColor (int ,int ) ;
 int GdipSetPenWidth (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_2__ gdip ;

__attribute__((used)) static void
nk_gdip_stroke_triangle(short x0, short y0, short x1,
    short y1, short x2, short y2, unsigned short line_thickness, struct nk_color col)
{
    POINT points[] = {
        { x0, y0 },
        { x1, y1 },
        { x2, y2 },
        { x0, y0 },
    };
    GdipSetPenWidth(gdip.pen, (REAL)line_thickness);
    GdipSetPenColor(gdip.pen, convert_color(col));
    GdipDrawPolygonI(gdip.memory, gdip.pen, points, 4);
}
