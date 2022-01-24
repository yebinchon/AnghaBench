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
typedef  int /*<<< orphan*/  uint32_t ;
struct gs_texture {int /*<<< orphan*/  gl_target; int /*<<< orphan*/  texture; } ;
struct gs_device {scalar_t__ copy_type; } ;

/* Variables and functions */
 scalar_t__ COPY_TYPE_ARB ; 
 scalar_t__ COPY_TYPE_FBO_BLIT ; 
 scalar_t__ COPY_TYPE_NV ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct gs_texture*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gs_texture*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

bool FUNC5(struct gs_device *device, struct gs_texture *dst,
		     uint32_t dst_x, uint32_t dst_y, struct gs_texture *src,
		     uint32_t src_x, uint32_t src_y, uint32_t width,
		     uint32_t height)
{
	bool success = false;

	if (device->copy_type == COPY_TYPE_ARB) {
		FUNC1(src->texture, src->gl_target, 0, src_x,
				   src_y, 0, dst->texture, dst->gl_target, 0,
				   dst_x, dst_y, 0, width, height, 1);
		success = FUNC4("glCopyImageSubData");

	} else if (device->copy_type == COPY_TYPE_NV) {
		FUNC2(src->texture, src->gl_target, 0, src_x,
				     src_y, 0, dst->texture, dst->gl_target, 0,
				     dst_x, dst_y, 0, width, height, 1);
		success = FUNC4("glCopyImageSubDataNV");

	} else if (device->copy_type == COPY_TYPE_FBO_BLIT) {
		success = FUNC3(dst, dst_x, dst_y, src, src_x, src_y,
				      width, height);
		if (!success)
			FUNC0(LOG_ERROR, "gl_copy_texture failed");
	}

	return success;
}