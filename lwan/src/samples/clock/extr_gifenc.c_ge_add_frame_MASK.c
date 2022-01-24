#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
struct TYPE_6__ {scalar_t__ nframes; int w; int h; int /*<<< orphan*/ * frame; int /*<<< orphan*/ * back; } ;
typedef  TYPE_1__ ge_GIF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

void FUNC3(ge_GIF *gif, uint16_t delay)
{
    uint16_t w, h, x, y;
    uint8_t *tmp;

    if (delay)
        FUNC2(gif, delay);
    if (gif->nframes == 0) {
        w = gif->w;
        h = gif->h;
        x = y = 0;
    } else if (!FUNC0(gif, &w, &h, &x, &y)) {
        /* image's not changed; save one pixel just to add delay */
        w = h = 1;
        x = y = 0;
    }
    FUNC1(gif, w, h, x, y);
    gif->nframes++;
    tmp = gif->back;
    gif->back = gif->frame;
    gif->frame = tmp;
}