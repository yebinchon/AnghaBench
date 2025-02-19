
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rawfb_context {int dummy; } ;
struct nk_vec2i {short x; short y; } ;
struct nk_color {int dummy; } ;


 int nk_rawfb_fill_polygon (struct rawfb_context const*,struct nk_vec2i*,int,struct nk_color const) ;

__attribute__((used)) static void
nk_rawfb_fill_triangle(const struct rawfb_context *rawfb,
    const short x0, const short y0, const short x1, const short y1,
    const short x2, const short y2, const struct nk_color col)
{
    struct nk_vec2i pnts[3];
    pnts[0].x = x0;
    pnts[0].y = y0;
    pnts[1].x = x1;
    pnts[1].y = y1;
    pnts[2].x = x2;
    pnts[2].y = y2;
    nk_rawfb_fill_polygon(rawfb, pnts, 3, col);
}
