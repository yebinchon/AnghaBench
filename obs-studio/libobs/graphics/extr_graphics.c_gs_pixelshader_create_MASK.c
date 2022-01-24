#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gs_shader_t ;
struct TYPE_4__ {int /*<<< orphan*/ * (* device_pixelshader_create ) (int /*<<< orphan*/ ,char const*,char const*,char**) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  device; TYPE_1__ exports; } ;
typedef  TYPE_2__ graphics_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char const*,char const*,char**) ; 
 TYPE_2__* thread_graphics ; 

gs_shader_t *FUNC2(const char *shader, const char *file,
				   char **error_string)
{
	graphics_t *graphics = thread_graphics;

	if (!FUNC0("gs_pixelshader_create", shader))
		return NULL;

	return graphics->exports.device_pixelshader_create(
		graphics->device, shader, file, error_string);
}