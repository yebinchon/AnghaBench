
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rawfb_context {int dummy; } ;
struct nk_color {int dummy; } ;


 int nk_rawfb_stroke_line (struct rawfb_context const*,short,short,short,short,int,struct nk_color const) ;

__attribute__((used)) static void
nk_rawfb_fill_circle(const struct rawfb_context *rawfb,
    short x0, short y0, short w, short h, const struct nk_color col)
{

    const int a2 = (w * w) / 4;
    const int b2 = (h * h) / 4;
    const int fa2 = 4 * a2, fb2 = 4 * b2;
    int x, y, sigma;


    h = (h + 1) / 2;
    w = (w + 1) / 2;
    x0 += w;
    y0 += h;


    for (x = 0, y = h, sigma = 2*b2+a2*(1-2*h); b2*x <= a2*y; x++) {
        nk_rawfb_stroke_line(rawfb, x0 - x, y0 + y, x0 + x, y0 + y, 1, col);
        nk_rawfb_stroke_line(rawfb, x0 - x, y0 - y, x0 + x, y0 - y, 1, col);
        if (sigma >= 0) {
            sigma += fa2 * (1 - y);
            y--;
        } sigma += b2 * ((4 * x) + 6);
    }

    for (x = w, y = 0, sigma = 2*a2+b2*(1-2*w); a2*y <= b2*x; y++) {
        nk_rawfb_stroke_line(rawfb, x0 - x, y0 + y, x0 + x, y0 + y, 1, col);
        nk_rawfb_stroke_line(rawfb, x0 - x, y0 - y, x0 + x, y0 - y, 1, col);
        if (sigma >= 0) {
            sigma += fb2 * (1 - x);
            x--;
        } sigma += a2 * ((4 * y) + 6);
    }
}
