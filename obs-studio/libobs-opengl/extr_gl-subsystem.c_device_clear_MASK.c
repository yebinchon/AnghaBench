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
struct vec4 {int /*<<< orphan*/  w; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
typedef  int /*<<< orphan*/  gs_device_t ;
typedef  int /*<<< orphan*/  GLbitfield ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COLOR_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_DEPTH_BUFFER_BIT ; 
 int /*<<< orphan*/  GL_STENCIL_BUFFER_BIT ; 
 int GS_CLEAR_COLOR ; 
 int GS_CLEAR_DEPTH ; 
 int GS_CLEAR_STENCIL ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (float) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void FUNC7(gs_device_t *device, uint32_t clear_flags,
		  const struct vec4 *color, float depth, uint8_t stencil)
{
	GLbitfield gl_flags = 0;

	if (clear_flags & GS_CLEAR_COLOR) {
		FUNC3(color->x, color->y, color->z, color->w);
		gl_flags |= GL_COLOR_BUFFER_BIT;
	}

	if (clear_flags & GS_CLEAR_DEPTH) {
		FUNC4(depth);
		gl_flags |= GL_DEPTH_BUFFER_BIT;
	}

	if (clear_flags & GS_CLEAR_STENCIL) {
		FUNC5(stencil);
		gl_flags |= GL_STENCIL_BUFFER_BIT;
	}

	FUNC2(gl_flags);
	if (!FUNC6("glClear"))
		FUNC1(LOG_ERROR, "device_clear (GL) failed");

	FUNC0(device);
}