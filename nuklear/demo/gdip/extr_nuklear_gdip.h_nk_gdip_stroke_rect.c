
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_2__ {int pen; int memory; } ;
typedef int REAL ;
typedef short INT ;


 int GdipDrawArcI (int ,int ,short,short,short,short,int,int) ;
 int GdipDrawLineI (int ,int ,short,short,short,short) ;
 int GdipDrawRectangleI (int ,int ,short,short,unsigned short,unsigned short) ;
 int GdipSetPenColor (int ,int ) ;
 int GdipSetPenWidth (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_stroke_rect(short x, short y, unsigned short w,
    unsigned short h, unsigned short r, unsigned short line_thickness, struct nk_color col)
{
    GdipSetPenWidth(gdip.pen, (REAL)line_thickness);
    GdipSetPenColor(gdip.pen, convert_color(col));
    if (r == 0) {
        GdipDrawRectangleI(gdip.memory, gdip.pen, x, y, w, h);
    } else {
        INT d = 2 * r;
        GdipDrawArcI(gdip.memory, gdip.pen, x, y, d, d, 180, 90);
        GdipDrawLineI(gdip.memory, gdip.pen, x + r, y, x + w - r, y);
        GdipDrawArcI(gdip.memory, gdip.pen, x + w - d, y, d, d, 270, 90);
        GdipDrawLineI(gdip.memory, gdip.pen, x + w, y + r, x + w, y + h - r);
        GdipDrawArcI(gdip.memory, gdip.pen, x + w - d, y + h - d, d, d, 0, 90);
        GdipDrawLineI(gdip.memory, gdip.pen, x, y + r, x, y + h - r);
        GdipDrawArcI(gdip.memory, gdip.pen, x, y + h - d, d, d, 90, 90);
        GdipDrawLineI(gdip.memory, gdip.pen, x + r, y + h, x + w - r, y + h);
    }
}
