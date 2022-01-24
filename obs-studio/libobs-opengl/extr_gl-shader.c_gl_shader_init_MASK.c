#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gs_shader {scalar_t__ type; int /*<<< orphan*/  obj; } ;
struct TYPE_2__ {char* array; } ;
struct gl_shader_parser {TYPE_1__ gl_string; } ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  int GLint ;
typedef  int /*<<< orphan*/  GLenum ;
typedef  int /*<<< orphan*/  GLchar ;

/* Variables and functions */
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  GL_INFO_LOG_LENGTH ; 
 scalar_t__ GS_SHADER_VERTEX ; 
 int /*<<< orphan*/  LOG_DEBUG ; 
 int /*<<< orphan*/  LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const**,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct gs_shader*,struct gl_shader_parser*) ; 
 int /*<<< orphan*/  FUNC9 (struct gs_shader*,struct gl_shader_parser*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,char**) ; 
 int FUNC11 (struct gs_shader*,struct gl_shader_parser*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (int) ; 

__attribute__((used)) static bool FUNC14(struct gs_shader *shader,
			   struct gl_shader_parser *glsp, const char *file,
			   char **error_string)
{
	GLenum type = FUNC1(shader->type);
	int compiled = 0;
	bool success = true;

	shader->obj = FUNC4(type);
	if (!FUNC12("glCreateShader") || !shader->obj)
		return false;

	FUNC7(shader->obj, 1, (const GLchar **)&glsp->gl_string.array,
		       0);
	if (!FUNC12("glShaderSource"))
		return false;

	FUNC3(shader->obj);
	if (!FUNC12("glCompileShader"))
		return false;

#if 0
	blog(LOG_DEBUG, "+++++++++++++++++++++++++++++++++++");
	blog(LOG_DEBUG, "  GL shader string for: %s", file);
	blog(LOG_DEBUG, "-----------------------------------");
	blog(LOG_DEBUG, "%s", glsp->gl_string.array);
	blog(LOG_DEBUG, "+++++++++++++++++++++++++++++++++++");
#endif

	FUNC6(shader->obj, GL_COMPILE_STATUS, &compiled);
	if (!FUNC12("glGetShaderiv"))
		return false;

	if (!compiled) {
		GLint infoLength = 0;
		FUNC6(shader->obj, GL_INFO_LOG_LENGTH, &infoLength);

		char *infoLog = FUNC13(sizeof(char) * infoLength);

		GLsizei returnedLength = 0;
		FUNC5(shader->obj, infoLength, &returnedLength,
				   infoLog);
		FUNC0(LOG_ERROR, "Error compiling shader:\n%s\n", infoLog);

		FUNC2(infoLog);

		success = false;
	}

	FUNC10(shader->obj, file, error_string);

	if (success)
		success = FUNC8(shader, glsp);
	/* Only vertex shaders actually require input attributes */
	if (success && shader->type == GS_SHADER_VERTEX)
		success = FUNC11(shader, glsp);
	if (success)
		FUNC9(shader, glsp);

	return success;
}