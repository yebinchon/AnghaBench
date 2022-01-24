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
struct gs_shader {int dummy; } ;
typedef  struct gs_shader gs_shader_t ;
typedef  int /*<<< orphan*/  gs_device_t ;

/* Variables and functions */
 int /*<<< orphan*/  GS_SHADER_VERTEX ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct gs_shader* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,char**) ; 

gs_shader_t *FUNC2(gs_device_t *device, const char *shader,
					const char *file, char **error_string)
{
	struct gs_shader *ptr;
	ptr = FUNC1(device, GS_SHADER_VERTEX, shader, file,
			    error_string);
	if (!ptr)
		FUNC0(LOG_ERROR, "device_vertexshader_create (GL) failed");
	return ptr;
}