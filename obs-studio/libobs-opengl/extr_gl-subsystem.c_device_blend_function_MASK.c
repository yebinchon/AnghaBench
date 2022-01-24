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
typedef  int /*<<< orphan*/  gs_device_t ;
typedef  enum gs_blend_type { ____Placeholder_gs_blend_type } gs_blend_type ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(gs_device_t *device, enum gs_blend_type src,
			   enum gs_blend_type dest)
{
	GLenum gl_src = FUNC2(src);
	GLenum gl_dst = FUNC2(dest);

	FUNC3(gl_src, gl_dst);
	if (!FUNC4("glBlendFunc"))
		FUNC1(LOG_ERROR, "device_blend_function (GL) failed");

	FUNC0(device);
}