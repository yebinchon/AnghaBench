
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {short h; short y; int x; int w; } ;
struct rawfb_context {TYPE_1__ scissors; } ;
struct nk_color {int dummy; } ;


 short MAX (int ,short) ;
 short MIN (int ,short) ;
 int nk_rawfb_ctx_setpixel (struct rawfb_context const*,short,short,struct nk_color const) ;
 int nk_rawfb_line_horizontal (struct rawfb_context const*,short,short,short,struct nk_color const) ;

__attribute__((used)) static void
nk_rawfb_stroke_line(const struct rawfb_context *rawfb,
    short x0, short y0, short x1, short y1,
    const unsigned int line_thickness, const struct nk_color col)
{
    short tmp;
    int dy, dx, stepx, stepy;

    dy = y1 - y0;
    dx = x1 - x0;


    if (dy == 0) {
        if (dx == 0 || y0 >= rawfb->scissors.h || y0 < rawfb->scissors.y)
            return;

        if (dx < 0) {

            tmp = x1;
            x1 = x0;
            x0 = tmp;
        }
        x1 = MIN(rawfb->scissors.w, x1);
        x0 = MIN(rawfb->scissors.w, x0);
        x1 = MAX(rawfb->scissors.x, x1);
        x0 = MAX(rawfb->scissors.x, x0);
        nk_rawfb_line_horizontal(rawfb, x0, y0, x1, col);
        return;
    }
    if (dy < 0) {
        dy = -dy;
        stepy = -1;
    } else stepy = 1;

    if (dx < 0) {
        dx = -dx;
        stepx = -1;
    } else stepx = 1;

    dy <<= 1;
    dx <<= 1;

    nk_rawfb_ctx_setpixel(rawfb, x0, y0, col);
    if (dx > dy) {
        int fraction = dy - (dx >> 1);
        while (x0 != x1) {
            if (fraction >= 0) {
                y0 += stepy;
                fraction -= dx;
            }
            x0 += stepx;
            fraction += dy;
            nk_rawfb_ctx_setpixel(rawfb, x0, y0, col);
        }
    } else {
        int fraction = dx - (dy >> 1);
        while (y0 != y1) {
            if (fraction >= 0) {
                x0 += stepx;
                fraction -= dy;
            }
            y0 += stepy;
            fraction += dx;
            nk_rawfb_ctx_setpixel(rawfb, x0, y0, col);
        }
    }
}
