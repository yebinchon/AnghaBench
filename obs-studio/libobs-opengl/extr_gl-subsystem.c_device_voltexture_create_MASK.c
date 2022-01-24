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
typedef  int /*<<< orphan*/  const** uint32_t ;
typedef  int /*<<< orphan*/  gs_texture_t ;
typedef  int /*<<< orphan*/  const* gs_device_t ;
typedef  enum gs_color_format { ____Placeholder_gs_color_format } gs_color_format ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

gs_texture_t *FUNC1(gs_device_t *device, uint32_t width,
				       uint32_t height, uint32_t depth,
				       enum gs_color_format color_format,
				       uint32_t levels, const uint8_t **data,
				       uint32_t flags)
{
	/* TODO */
	FUNC0(device);
	FUNC0(width);
	FUNC0(height);
	FUNC0(depth);
	FUNC0(color_format);
	FUNC0(levels);
	FUNC0(data);
	FUNC0(flags);
	return NULL;
}