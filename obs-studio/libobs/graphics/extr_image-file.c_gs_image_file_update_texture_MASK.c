#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int width; } ;
struct TYPE_6__ {size_t cur_frame; TYPE_1__ gif; int /*<<< orphan*/ * animation_frame_cache; int /*<<< orphan*/  texture; int /*<<< orphan*/  loaded; int /*<<< orphan*/  is_animated_gif; } ;
typedef  TYPE_2__ gs_image_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

void FUNC2(gs_image_file_t *image)
{
	if (!image->is_animated_gif || !image->loaded)
		return;

	if (!image->animation_frame_cache[image->cur_frame])
		FUNC0(image, image->cur_frame);

	FUNC1(image->texture,
			     image->animation_frame_cache[image->cur_frame],
			     image->gif.width * 4, false);
}