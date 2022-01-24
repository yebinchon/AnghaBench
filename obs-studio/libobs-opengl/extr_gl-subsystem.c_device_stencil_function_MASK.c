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
typedef  enum gs_stencil_side { ____Placeholder_gs_stencil_side } gs_stencil_side ;
typedef  enum gs_depth_test { ____Placeholder_gs_depth_test } gs_depth_test ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void FUNC6(gs_device_t *device, enum gs_stencil_side side,
			     enum gs_depth_test test)
{
	GLenum gl_side = FUNC3(side);
	GLenum gl_test = FUNC2(test);

	FUNC4(gl_side, gl_test, 0, 0xFFFFFFFF);
	if (!FUNC5("glStencilFuncSeparate"))
		FUNC1(LOG_ERROR, "device_stencil_function (GL) failed");

	FUNC0(device);
}