
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rawfb_context {int dummy; } ;
struct nk_color {int dummy; } ;


 int nk_rawfb_stroke_line (struct rawfb_context const*,short const,short const,short const,short const,unsigned short const,struct nk_color const) ;

__attribute__((used)) static void
nk_rawfb_stroke_triangle(const struct rawfb_context *rawfb,
    const short x0, const short y0, const short x1, const short y1,
    const short x2, const short y2, const unsigned short line_thickness,
    const struct nk_color col)
{
    nk_rawfb_stroke_line(rawfb, x0, y0, x1, y1, line_thickness, col);
    nk_rawfb_stroke_line(rawfb, x1, y1, x2, y2, line_thickness, col);
    nk_rawfb_stroke_line(rawfb, x2, y2, x0, y0, line_thickness, col);
}
