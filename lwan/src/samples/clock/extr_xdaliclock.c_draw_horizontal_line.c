
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct xdaliclock {TYPE_1__* gif_enc; } ;
typedef enum paint_color { ____Placeholder_paint_color } paint_color ;
struct TYPE_2__ {scalar_t__ frame; } ;


 scalar_t__ UNLIKELY (int) ;
 int memset (scalar_t__,int ,size_t) ;

__attribute__((used)) static void draw_horizontal_line(struct xdaliclock *xdc,
                                 int x1,
                                 int x2,
                                 int y,
                                 int screen_width,
                                 enum paint_color color)
{


    if (UNLIKELY(x1 > screen_width))
        x1 = screen_width;
    else if (UNLIKELY(x1 < 0))
        x1 = 0;

    if (UNLIKELY(x2 > screen_width))
        x2 = screen_width;
    else if (UNLIKELY(x2 < 0))
        x2 = 0;

    if (x1 == x2)
        return;

    if (x1 > x2) {
        int swap = x1;
        x1 = x2;
        x2 = swap;
    }

    memset(xdc->gif_enc->frame + y * screen_width + x1, (uint8_t)color,
           (size_t)(x2 - x1));
}
