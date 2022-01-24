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
typedef  void* uint32_t ;
struct gs_stage_surface {int format; int bytes_per_pixel; int /*<<< orphan*/  gl_type; int /*<<< orphan*/  gl_internal_format; int /*<<< orphan*/  gl_format; void* height; void* width; int /*<<< orphan*/ * device; } ;
typedef  struct gs_stage_surface gs_stagesurf_t ;
typedef  int /*<<< orphan*/  gs_device_t ;
typedef  enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct gs_stage_surface* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct gs_stage_surface*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct gs_stage_surface*) ; 

gs_stagesurf_t *FUNC8(gs_device_t *device, uint32_t width,
					   uint32_t height,
					   enum gs_color_format color_format)
{
	struct gs_stage_surface *surf;
	surf = FUNC1(sizeof(struct gs_stage_surface));
	surf->device = device;
	surf->format = color_format;
	surf->width = width;
	surf->height = height;
	surf->gl_format = FUNC2(color_format);
	surf->gl_internal_format = FUNC3(color_format);
	surf->gl_type = FUNC5(color_format);
	surf->bytes_per_pixel = FUNC6(color_format) / 8;

	if (!FUNC4(surf)) {
		FUNC0(LOG_ERROR, "device_stagesurface_create (GL) failed");
		FUNC7(surf);
		return NULL;
	}

	return surf;
}