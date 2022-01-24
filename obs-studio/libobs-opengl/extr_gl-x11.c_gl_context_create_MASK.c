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
struct gl_platform {int /*<<< orphan*/  pbuffer; int /*<<< orphan*/ * display; scalar_t__ context; } ;
typedef  int /*<<< orphan*/  GLXFBConfig ;
typedef  scalar_t__ GLXContext ;
typedef  int /*<<< orphan*/  Display ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GLAD_GLX_ARB_create_context ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ctx_attribs ; 
 int /*<<< orphan*/  ctx_pbuffer_attribs ; 
 int /*<<< orphan*/  ctx_visual_attribs ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC7(struct gl_platform *plat)
{
	Display *display = plat->display;
	int frame_buf_config_count = 0;
	GLXFBConfig *config = NULL;
	GLXContext context;
	bool success = false;

	if (!GLAD_GLX_ARB_create_context) {
		FUNC3(LOG_ERROR, "ARB_GLX_create_context not supported!");
		return false;
	}

	config = FUNC4(display, FUNC0(display),
				   ctx_visual_attribs, &frame_buf_config_count);
	if (!config) {
		FUNC3(LOG_ERROR, "Failed to create OpenGL frame buffer config");
		return false;
	}

	context = FUNC5(display, config[0], NULL, true,
					     ctx_attribs);
	if (!context) {
		FUNC3(LOG_ERROR, "Failed to create OpenGL context.");
		goto error;
	}

	plat->context = context;
	plat->display = display;

	plat->pbuffer =
		FUNC6(display, config[0], ctx_pbuffer_attribs);
	if (!plat->pbuffer) {
		FUNC3(LOG_ERROR, "Failed to create OpenGL pbuffer");
		goto error;
	}

	success = true;

error:
	FUNC1(config);
	FUNC2(display, false);
	return success;
}