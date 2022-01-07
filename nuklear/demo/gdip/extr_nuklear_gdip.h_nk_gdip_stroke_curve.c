
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nk_vec2i {int y; int x; } ;
struct nk_color {int dummy; } ;
struct TYPE_2__ {int pen; int memory; } ;
typedef int REAL ;


 int GdipDrawBezierI (int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int GdipSetPenColor (int ,int ) ;
 int GdipSetPenWidth (int ,int ) ;
 int convert_color (struct nk_color) ;
 TYPE_1__ gdip ;

__attribute__((used)) static void
nk_gdip_stroke_curve(struct nk_vec2i p1,
    struct nk_vec2i p2, struct nk_vec2i p3, struct nk_vec2i p4,
    unsigned short line_thickness, struct nk_color col)
{
    GdipSetPenWidth(gdip.pen, (REAL)line_thickness);
    GdipSetPenColor(gdip.pen, convert_color(col));
    GdipDrawBezierI(gdip.memory, gdip.pen, p1.x, p1.y, p2.x, p2.y, p3.x, p3.y, p4.x, p4.y);
}
