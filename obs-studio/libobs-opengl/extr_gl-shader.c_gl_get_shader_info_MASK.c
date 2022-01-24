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
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  scalar_t__ GLint ;

/* Variables and functions */
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(GLuint shader, const char *file,
			       char **error_string)
{
	char *errors;
	GLint info_len = 0;
	GLsizei chars_written = 0;

	FUNC4(shader, GL_INFO_LOG_LENGTH, &info_len);
	if (!FUNC5("glGetProgramiv") || !info_len)
		return;

	errors = FUNC2(info_len + 1);
	FUNC3(shader, info_len, &chars_written, errors);
	FUNC5("glGetShaderInfoLog");

	FUNC1(LOG_DEBUG, "Compiler warnings/errors for %s:\n%s", file, errors);

	if (error_string)
		*error_string = errors;
	else
		FUNC0(errors);
}