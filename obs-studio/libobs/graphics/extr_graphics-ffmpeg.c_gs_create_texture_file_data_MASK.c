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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ uint32_t ;
struct ffmpeg_image {int cx; int cy; int /*<<< orphan*/  format; } ;
typedef  enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct ffmpeg_image*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ffmpeg_image*) ; 
 scalar_t__ FUNC5 (struct ffmpeg_image*,char const*) ; 

uint8_t *FUNC6(const char *file,
				     enum gs_color_format *format,
				     uint32_t *cx_out, uint32_t *cy_out)
{
	struct ffmpeg_image image;
	uint8_t *data = NULL;

	if (FUNC5(&image, file)) {
		data = FUNC1(image.cx * image.cy * 4);

		if (FUNC3(&image, data, image.cx * 4)) {
			*format = FUNC2(image.format);
			*cx_out = (uint32_t)image.cx;
			*cy_out = (uint32_t)image.cy;
		} else {
			FUNC0(data);
			data = NULL;
		}

		FUNC4(&image);
	}

	return data;
}