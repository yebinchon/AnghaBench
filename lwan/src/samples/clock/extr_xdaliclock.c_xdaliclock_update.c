
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct xdaliclock {size_t frame; int* target_digits; int current_digits; } ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct frame {int dummy; } ;


 size_t FRAMES_PER_SECOND ;
 scalar_t__* digit_widths ;
 int * easing ;
 struct frame* frame_lerp (struct xdaliclock*,int,int ) ;
 int frame_render (struct xdaliclock*,struct frame const*,int) ;
 struct tm* localtime (int const*) ;
 int memcpy (int ,int*,int) ;
 int time (int *) ;

void xdaliclock_update(struct xdaliclock *xdc)
{
    if (xdc->frame >= FRAMES_PER_SECOND) {
        const time_t now = time(((void*)0));
        const struct tm *tm = localtime(&now);

        memcpy(xdc->current_digits, xdc->target_digits,
               sizeof(xdc->current_digits));

        xdc->target_digits[0] = tm->tm_hour / 10;
        xdc->target_digits[1] = tm->tm_hour % 10;
        xdc->target_digits[2] = 10;
        xdc->target_digits[3] = tm->tm_min / 10;
        xdc->target_digits[4] = tm->tm_min % 10;
        xdc->target_digits[5] = 10;
        xdc->target_digits[6] = tm->tm_sec / 10;
        xdc->target_digits[7] = tm->tm_sec % 10;

        xdc->frame = 0;
    }

    for (int digit = 0, x = 0; digit < 8; x += digit_widths[digit++]) {
        const struct frame *frame = frame_lerp(xdc, digit, easing[xdc->frame]);

        frame_render(xdc, frame, x);
    }

    xdc->frame++;
}
