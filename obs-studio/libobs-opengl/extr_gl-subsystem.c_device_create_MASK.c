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
struct gs_device {int /*<<< orphan*/ * cur_swap; int /*<<< orphan*/  empty_vao; int /*<<< orphan*/  plat; } ;
typedef  struct gs_device gs_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_CULL_FACE ; 
 int /*<<< orphan*/  GL_RENDERER ; 
 int /*<<< orphan*/  GL_SHADING_LANGUAGE_VERSION ; 
 int /*<<< orphan*/  GL_VENDOR ; 
 int /*<<< orphan*/  GL_VERSION ; 
 int GS_ERROR_FAIL ; 
 int GS_ERROR_NOT_SUPPORTED ; 
 int GS_SUCCESS ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct gs_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct gs_device* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct gs_device*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct gs_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct gs_device*,int /*<<< orphan*/ ) ; 

int FUNC9(gs_device_t **p_device, uint32_t adapter)
{
	struct gs_device *device = FUNC2(sizeof(struct gs_device));
	int errorcode = GS_ERROR_FAIL;

	FUNC1(LOG_INFO, "---------------------------------");
	FUNC1(LOG_INFO, "Initializing OpenGL...");

	device->plat = FUNC8(device, adapter);
	if (!device->plat)
		goto fail;

	const char *glVendor = (const char *)FUNC4(GL_VENDOR);
	const char *glRenderer = (const char *)FUNC4(GL_RENDERER);

	FUNC1(LOG_INFO, "Loading up OpenGL on adapter %s %s", glVendor,
	     glRenderer);

	if (!FUNC7(device)) {
		errorcode = GS_ERROR_NOT_SUPPORTED;
		goto fail;
	}

	const char *glVersion = (const char *)FUNC4(GL_VERSION);
	const char *glShadingLanguage =
		(const char *)FUNC4(GL_SHADING_LANGUAGE_VERSION);

	FUNC1(LOG_INFO,
	     "OpenGL loaded successfully, version %s, shading "
	     "language %s",
	     glVersion, glShadingLanguage);

	FUNC5(GL_CULL_FACE);
	FUNC6(1, &device->empty_vao);

	FUNC3(device);
	device->cur_swap = NULL;

#ifdef _WIN32
	blog(LOG_INFO, "Warning: The OpenGL renderer is currently in use.  "
		       "On windows, the OpenGL renderer can decrease "
		       "capture performance due to the lack of specific "
		       "features used to maximize capture performance.  "
		       "The Direct3D 11 renderer is recommended instead.");
#endif

	*p_device = device;
	return GS_SUCCESS;

fail:
	FUNC1(LOG_ERROR, "device_create (GL) failed");
	FUNC0(device);

	*p_device = NULL;
	return errorcode;
}