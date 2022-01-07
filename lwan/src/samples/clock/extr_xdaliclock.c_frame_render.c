
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xdaliclock {TYPE_1__* gif_enc; } ;
struct scanline {int* left; int* right; } ;
struct frame {struct scanline* scanlines; } ;
struct TYPE_2__ {int w; } ;


 int BACKGROUND ;
 int FOREGROUND ;
 int MAX_SEGS_PER_LINE ;
 int char_height ;
 int char_width ;
 int draw_horizontal_line (struct xdaliclock*,int,int,int,int ,int ) ;

__attribute__((used)) static void
frame_render(struct xdaliclock *xdc, const struct frame *frame, int x)
{
    for (int py = 0; py < char_height; py++) {
        const struct scanline *line = &frame->scanlines[py];
        int last_right = 0;
        int px = 0;

        goto first_iter;

        for (; px < MAX_SEGS_PER_LINE; px++) {
            if ((line->left[px] == line->right[px] ||
                 (line->left[px] == line->left[px - 1] &&
                  line->right[px] == line->right[px - 1]))) {
                continue;
            }

        first_iter:


            draw_horizontal_line(xdc, x + last_right, x + line->left[px], py,
                                 xdc->gif_enc->w, BACKGROUND);



            draw_horizontal_line(xdc, x + line->left[px], x + line->right[px],
                                 py, xdc->gif_enc->w, FOREGROUND);

            last_right = line->right[px];
        }



        draw_horizontal_line(xdc, x + last_right, x + char_width, py,
                             xdc->gif_enc->w, BACKGROUND);
    }
}
