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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FRAGMENT_PROGRAM_ARB ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_string_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_string_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct wined3d_string_buffer*) ; 

__attribute__((used)) static GLuint FUNC10(const struct wined3d_gl_info *gl_info, const struct arbfp_blit_type *type)
{
    GLuint shader;
    struct wined3d_string_buffer buffer;
    const char *tex_target = FUNC3(type->res_type);

    /* This should not happen because we only use this conversion for
     * present blits which don't use color keying. */
    if (type->use_color_key)
        FUNC1("Implement P8 color keying.\n");

    /* Shader header */
    if (!FUNC9(&buffer))
    {
        FUNC0("Failed to initialize shader buffer.\n");
        return 0;
    }

    FUNC2(FUNC5(1, &shader));
    FUNC2(FUNC4(GL_FRAGMENT_PROGRAM_ARB, shader));
    if (!shader)
    {
        FUNC8(&buffer);
        return 0;
    }

    FUNC6(&buffer, "!!ARBfp1.0\n");
    FUNC6(&buffer, "TEMP index;\n");

    /* { 255/256, 0.5/255*255/256, 0, 0 } */
    FUNC6(&buffer, "PARAM constants = { 0.996, 0.00195, 0, 0 };\n");

    /* The alpha-component contains the palette index */
    FUNC6(&buffer, "TEX index, fragment.texcoord[0], texture[0], %s;\n", tex_target);

    /* Scale the index by 255/256 and add a bias of '0.5' in order to sample in the middle */
    FUNC6(&buffer, "MAD index.a, index.a, constants.x, constants.y;\n");

    /* Use the alpha-component as an index in the palette to get the final color */
    FUNC6(&buffer, "TEX result.color, index.a, texture[1], 1D;\n");
    FUNC6(&buffer, "END\n");

    FUNC7(gl_info, GL_FRAGMENT_PROGRAM_ARB, buffer.buffer);

    FUNC8(&buffer);

    return shader;
}