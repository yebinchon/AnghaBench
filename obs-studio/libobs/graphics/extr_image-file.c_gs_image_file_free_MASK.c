#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  gif_data; int /*<<< orphan*/  texture_data; int /*<<< orphan*/  texture; int /*<<< orphan*/  animation_frame_data; int /*<<< orphan*/  animation_frame_cache; int /*<<< orphan*/  gif; scalar_t__ is_animated_gif; scalar_t__ loaded; } ;
typedef  TYPE_1__ gs_image_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

void FUNC4(gs_image_file_t *image)
{
	if (!image)
		return;

	if (image->loaded) {
		if (image->is_animated_gif) {
			FUNC1(&image->gif);
			FUNC0(image->animation_frame_cache);
			FUNC0(image->animation_frame_data);
		}

		FUNC2(image->texture);
	}

	FUNC0(image->texture_data);
	FUNC0(image->gif_data);
	FUNC3(image, 0, sizeof(*image));
}