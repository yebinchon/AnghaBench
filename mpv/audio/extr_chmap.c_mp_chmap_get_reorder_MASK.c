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
struct mp_chmap {int num; scalar_t__* speaker; } ;

/* Variables and functions */
 int MP_NUM_CHANNELS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct mp_chmap const*) ; 

void FUNC2(int src[MP_NUM_CHANNELS], const struct mp_chmap *from,
                          const struct mp_chmap *to)
{
    for (int n = 0; n < MP_NUM_CHANNELS; n++)
        src[n] = -1;

    if (FUNC1(from) || FUNC1(to)) {
        for (int n = 0; n < to->num; n++)
            src[n] = n < from->num ? n : -1;
        return;
    }

    for (int n = 0; n < to->num; n++) {
        for (int i = 0; i < from->num; i++) {
            if (to->speaker[n] == from->speaker[i]) {
                src[n] = i;
                break;
            }
        }
    }

    for (int n = 0; n < to->num; n++)
        FUNC0(src[n] < 0 || (to->speaker[n] == from->speaker[src[n]]));
}