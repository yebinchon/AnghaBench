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
typedef  int uint32_t ;
typedef  int int32_t ;
typedef  int /*<<< orphan*/  gs_texture_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

void FUNC5(gs_texture_t *tex, const uint8_t *data,
			  uint32_t linesize, bool flip)
{
	uint8_t *ptr;
	uint32_t linesize_out;
	uint32_t row_copy;
	int32_t height;
	int32_t y;

	if (!FUNC3("gs_texture_set_image", tex, data))
		return;

	height = (int32_t)FUNC0(tex);

	if (!FUNC1(tex, &ptr, &linesize_out))
		return;

	row_copy = (linesize < linesize_out) ? linesize : linesize_out;

	if (flip) {
		for (y = height - 1; y >= 0; y--)
			FUNC4(ptr + (uint32_t)y * linesize_out,
			       data + (uint32_t)(height - y - 1) * linesize,
			       row_copy);

	} else if (linesize == linesize_out) {
		FUNC4(ptr, data, row_copy * height);

	} else {
		for (y = 0; y < height; y++)
			FUNC4(ptr + (uint32_t)y * linesize_out,
			       data + (uint32_t)y * linesize, row_copy);
	}

	FUNC2(tex);
}