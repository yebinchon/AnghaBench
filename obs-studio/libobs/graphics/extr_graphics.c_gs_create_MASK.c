#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct graphics_subsystem {int dummy; } ;
struct TYPE_8__ {int (* device_create ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  device; TYPE_2__ exports; int /*<<< orphan*/  module; int /*<<< orphan*/  effect_mutex; int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ graphics_t ;

/* Variables and functions */
 int GS_ERROR_FAIL ; 
 int GS_ERROR_MODULE_NOT_FOUND ; 
 int GS_SUCCESS ; 
 TYPE_1__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC7(graphics_t **pgraphics, const char *module, uint32_t adapter)
{
	int errcode = GS_ERROR_FAIL;

	graphics_t *graphics = FUNC0(sizeof(struct graphics_subsystem));
	FUNC5(&graphics->mutex);
	FUNC5(&graphics->effect_mutex);

	graphics->module = FUNC4(module);
	if (!graphics->module) {
		errcode = GS_ERROR_MODULE_NOT_FOUND;
		goto error;
	}

	if (!FUNC3(&graphics->exports, graphics->module,
				   module))
		goto error;

	errcode = graphics->exports.device_create(&graphics->device, adapter);
	if (errcode != GS_SUCCESS)
		goto error;

	if (!FUNC1(graphics)) {
		errcode = GS_ERROR_FAIL;
		goto error;
	}

	*pgraphics = graphics;
	return errcode;

error:
	FUNC2(graphics);
	return errcode;
}