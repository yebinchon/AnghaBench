
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rawfb_context {int dummy; } ;
struct nk_vec2i {int y; int x; } ;
struct nk_color {int dummy; } ;


 int nk_rawfb_stroke_line (struct rawfb_context const*,int ,int ,int ,int ,unsigned short const,struct nk_color const) ;

__attribute__((used)) static void
nk_rawfb_stroke_polyline(const struct rawfb_context *rawfb,
    const struct nk_vec2i *pnts, const int count,
    const unsigned short line_thickness, const struct nk_color col)
{
    int i;
    for (i = 0; i < count-1; ++i)
        nk_rawfb_stroke_line(rawfb, pnts[i].x, pnts[i].y,
                 pnts[i+1].x, pnts[i+1].y, line_thickness, col);
}
