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
struct gs_shader {int type; int /*<<< orphan*/ * device; } ;
struct gl_shader_parser {int dummy; } ;
typedef  int /*<<< orphan*/  gs_device_t ;
typedef  enum gs_shader_type { ____Placeholder_gs_shader_type } gs_shader_type ;

/* Variables and functions */
 struct gs_shader* FUNC0 (int) ; 
 int FUNC1 (struct gs_shader*,struct gl_shader_parser*,char const*,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct gl_shader_parser*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct gl_shader_parser*) ; 
 int /*<<< orphan*/  FUNC4 (struct gl_shader_parser*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gs_shader*) ; 

__attribute__((used)) static struct gs_shader *FUNC6(gs_device_t *device,
				       enum gs_shader_type type,
				       const char *shader_str, const char *file,
				       char **error_string)
{
	struct gs_shader *shader = FUNC0(sizeof(struct gs_shader));
	struct gl_shader_parser glsp;
	bool success = true;

	shader->device = device;
	shader->type = type;

	FUNC4(&glsp, type);
	if (!FUNC2(&glsp, shader_str, file))
		success = false;
	else
		success = FUNC1(shader, &glsp, file, error_string);

	if (!success) {
		FUNC5(shader);
		shader = NULL;
	}

	FUNC3(&glsp);
	return shader;
}