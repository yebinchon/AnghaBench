#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* bitmap_destroy ) (int /*<<< orphan*/ *) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * global_colour_table; int /*<<< orphan*/ * local_colour_table; int /*<<< orphan*/ * frames; int /*<<< orphan*/ * frame_image; TYPE_1__ bitmap_callbacks; } ;
typedef  TYPE_2__ gif_animation ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(gif_animation *gif) {
    /*    Release all our memory blocks
    */
    if (gif->frame_image) {
        FUNC0(gif->bitmap_callbacks.bitmap_destroy);
        gif->bitmap_callbacks.bitmap_destroy(gif->frame_image);
    }
    gif->frame_image = NULL;
    FUNC1(gif->frames);
    gif->frames = NULL;
    FUNC1(gif->local_colour_table);
    gif->local_colour_table = NULL;
    FUNC1(gif->global_colour_table);
    gif->global_colour_table = NULL;
}