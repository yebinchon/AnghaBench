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
struct gl_shader_parser {int /*<<< orphan*/  parser; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int FUNC2 (struct gl_shader_parser*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

bool FUNC5(struct gl_shader_parser *glsp, const char *shader_str,
		     const char *file)
{
	bool success = FUNC3(&glsp->parser, shader_str, file);
	char *str = FUNC4(&glsp->parser);
	if (str) {
		FUNC1(LOG_WARNING, "Shader parser errors/warnings:\n%s\n", str);
		FUNC0(str);
	}

	if (success)
		success = FUNC2(glsp);

	return success;
}