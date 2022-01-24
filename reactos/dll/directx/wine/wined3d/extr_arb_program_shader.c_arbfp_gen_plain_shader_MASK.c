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
struct wined3d_string_buffer {int /*<<< orphan*/  buffer; } ;
struct wined3d_gl_info {int dummy; } ;
struct arbfp_blit_type {scalar_t__ use_color_key; int /*<<< orphan*/  res_type; } ;
typedef  int /*<<< orphan*/  GLuint ;

/* Variables and functions */
 int /*<<< orphan*/  ARBFP_BLIT_PARAM_COLOR_KEY_HIGH ; 
 int /*<<< orphan*/  ARBFP_BLIT_PARAM_COLOR_KEY_LOW ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FRAGMENT_PROGRAM_ARB ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_string_buffer*) ; 

__attribute__((used)) static GLuint FUNC9(const struct wined3d_gl_info *gl_info, const struct arbfp_blit_type *type)
{
    GLuint shader;
    struct wined3d_string_buffer buffer;
    const char *tex_target = FUNC2(type->res_type);

    /* Shader header */
    if (!FUNC8(&buffer))
    {
        FUNC0("Failed to initialize shader buffer.\n");
        return 0;
    }

    FUNC1(FUNC4(1, &shader));
    if (!shader)
    {
        FUNC7(&buffer);
        return 0;
    }
    FUNC1(FUNC3(GL_FRAGMENT_PROGRAM_ARB, shader));

    FUNC5(&buffer, "!!ARBfp1.0\n");

    if (type->use_color_key)
    {
        FUNC5(&buffer, "TEMP color;\n");
        FUNC5(&buffer, "TEMP less, greater;\n");
        FUNC5(&buffer, "PARAM color_key_low = program.local[%u];\n", ARBFP_BLIT_PARAM_COLOR_KEY_LOW);
        FUNC5(&buffer, "PARAM color_key_high = program.local[%u];\n", ARBFP_BLIT_PARAM_COLOR_KEY_HIGH);
        FUNC5(&buffer, "TEX color, fragment.texcoord[0], texture[0], %s;\n", tex_target);
        FUNC5(&buffer, "SLT less, color, color_key_low;\n"); /* below low key */
        FUNC5(&buffer, "SGE greater, color, color_key_high;\n"); /* above high key */
        FUNC5(&buffer, "ADD less, less, greater;\n"); /* or */
        FUNC5(&buffer, "DP4 less.b, less, less;\n"); /* on any channel */
        FUNC5(&buffer, "SGE less, -less.b, 0.0;\n"); /* logical not */
        FUNC5(&buffer, "KIL -less;\n"); /* discard if true */
        FUNC5(&buffer, "MOV result.color, color;\n");
    }
    else
    {
        FUNC5(&buffer, "TEX result.color, fragment.texcoord[0], texture[0], %s;\n", tex_target);
    }

    FUNC5(&buffer, "END\n");

    FUNC6(gl_info, GL_FRAGMENT_PROGRAM_ARB, buffer.buffer);

    FUNC7(&buffer);

    return shader;
}