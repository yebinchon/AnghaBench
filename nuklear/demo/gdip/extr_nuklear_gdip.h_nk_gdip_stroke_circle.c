
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_2__ {int pen; int memory; } ;
typedef int REAL ;


 int GdipDrawEllipseI (int ,int ,short,short,unsigned short,unsigned short) ;
 int GdipSetPenColor (int ,int ) ;
 int GdipSetPenWidth (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_stroke_circle(short x, short y, unsigned short w,
    unsigned short h, unsigned short line_thickness, struct nk_color col)
{
    GdipSetPenWidth(gdip.pen, (REAL)line_thickness);
    GdipSetPenColor(gdip.pen, convert_color(col));
    GdipDrawEllipseI(gdip.memory, gdip.pen, x, y, w, h);
}
