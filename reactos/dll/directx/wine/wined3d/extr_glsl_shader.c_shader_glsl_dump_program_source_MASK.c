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
struct wined3d_gl_info {int dummy; } ;
typedef  char GLuint ;
typedef  size_t GLint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  GL_ATTACHED_SHADERS ; 
 int /*<<< orphan*/  GL_COMPILE_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_SHADER_SOURCE_LENGTH ; 
 int /*<<< orphan*/  GL_SHADER_TYPE ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 char* FUNC4 (char const**) ; 
 int /*<<< orphan*/  FUNC5 (char,size_t,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (char,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC7 (char,size_t,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (char,int /*<<< orphan*/ ,size_t*) ; 
 char* FUNC9 (size_t) ; 
 char* FUNC10 (size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12(const struct wined3d_gl_info *gl_info, GLuint program)
{
    GLint i, shader_count, source_size = -1;
    GLuint *shaders;
    char *source = NULL;

    FUNC2(FUNC6(program, GL_ATTACHED_SHADERS, &shader_count));
    if (!(shaders = FUNC10(shader_count, sizeof(*shaders))))
    {
        FUNC0("Failed to allocate shader array memory.\n");
        return;
    }

    FUNC2(FUNC5(program, shader_count, NULL, shaders));
    for (i = 0; i < shader_count; ++i)
    {
        const char *ptr, *line;
        GLint tmp;

        FUNC2(FUNC8(shaders[i], GL_SHADER_SOURCE_LENGTH, &tmp));

        if (source_size < tmp)
        {
            FUNC11(source);

            if (!(source = FUNC9(tmp)))
            {
                FUNC0("Failed to allocate %d bytes for shader source.\n", tmp);
                FUNC11(shaders);
                return;
            }
            source_size = tmp;
        }

        FUNC1("Shader %u:\n", shaders[i]);
        FUNC2(FUNC8(shaders[i], GL_SHADER_TYPE, &tmp));
        FUNC1("    GL_SHADER_TYPE: %s.\n", FUNC3(tmp));
        FUNC2(FUNC8(shaders[i], GL_COMPILE_STATUS, &tmp));
        FUNC1("    GL_COMPILE_STATUS: %d.\n", tmp);
        FUNC1("\n");

        ptr = source;
        FUNC2(FUNC7(shaders[i], source_size, NULL, source));
        while ((line = FUNC4(&ptr))) FUNC1("    %.*s", (int)(ptr - line), line);
        FUNC1("\n");
    }

    FUNC11(source);
    FUNC11(shaders);
}