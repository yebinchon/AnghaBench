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
struct gs_zstencil_buffer {int /*<<< orphan*/ * device; int /*<<< orphan*/  attachment; int /*<<< orphan*/  format; } ;
typedef  struct gs_zstencil_buffer gs_zstencil_t ;
typedef  int /*<<< orphan*/  gs_device_t ;
typedef  enum gs_zstencil_format { ____Placeholder_gs_zstencil_format } gs_zstencil_format ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct gs_zstencil_buffer* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct gs_zstencil_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct gs_zstencil_buffer*) ; 

gs_zstencil_t *FUNC6(gs_device_t *device, uint32_t width,
				      uint32_t height,
				      enum gs_zstencil_format format)
{
	struct gs_zstencil_buffer *zs;

	zs = FUNC1(sizeof(struct gs_zstencil_buffer));
	zs->format = FUNC2(format);
	zs->attachment = FUNC3(format);
	zs->device = device;

	if (!FUNC4(zs, width, height)) {
		FUNC0(LOG_ERROR, "device_zstencil_create (GL) failed");
		FUNC5(zs);
		return NULL;
	}

	return zs;
}