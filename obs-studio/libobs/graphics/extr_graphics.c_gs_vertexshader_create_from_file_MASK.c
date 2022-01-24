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
typedef  int /*<<< orphan*/  gs_shader_t ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char const*,char**) ; 
 char* FUNC4 (char const*) ; 

gs_shader_t *FUNC5(const char *file,
					      char **error_string)
{
	if (!FUNC2("gs_vertexshader_create_from_file", file))
		return NULL;

	char *file_string;
	gs_shader_t *shader = NULL;

	file_string = FUNC4(file);
	if (!file_string) {
		FUNC1(LOG_ERROR, "Could not load vertex shader file '%s'", file);
		return NULL;
	}

	shader = FUNC3(file_string, file, error_string);
	FUNC0(file_string);

	return shader;
}