#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  time_t ;
struct xdaliclock {size_t frame; int* target_digits; int /*<<< orphan*/  current_digits; } ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
struct frame {int dummy; } ;

/* Variables and functions */
 size_t FRAMES_PER_SECOND ; 
 scalar_t__* digit_widths ; 
 int /*<<< orphan*/ * easing ; 
 struct frame* FUNC0 (struct xdaliclock*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct xdaliclock*,struct frame const*,int) ; 
 struct tm* FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct xdaliclock *xdc)
{
    if (xdc->frame >= FRAMES_PER_SECOND) {
        const time_t now = FUNC4(NULL);
        const struct tm *tm = FUNC2(&now);

        FUNC3(xdc->current_digits, xdc->target_digits,
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
        const struct frame *frame = FUNC0(xdc, digit, easing[xdc->frame]);

        FUNC1(xdc, frame, x);
    }

    xdc->frame++;
}