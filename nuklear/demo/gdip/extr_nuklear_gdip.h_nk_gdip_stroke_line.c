
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_color {int dummy; } ;
struct TYPE_2__ {int pen; int memory; } ;
typedef int REAL ;


 int GdipDrawLineI (int ,int ,short,short,short,short) ;
 int GdipSetPenColor (int ,int ) ;
 int GdipSetPenWidth (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_stroke_line(short x0, short y0, short x1,
    short y1, unsigned int line_thickness, struct nk_color col)
{
    GdipSetPenWidth(gdip.pen, (REAL)line_thickness);
    GdipSetPenColor(gdip.pen, convert_color(col));
    GdipDrawLineI(gdip.memory, gdip.pen, x0, y0, x1, y1);
}
