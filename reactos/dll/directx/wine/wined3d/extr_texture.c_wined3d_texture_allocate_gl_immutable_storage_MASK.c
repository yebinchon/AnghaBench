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
struct wined3d_texture {int target; int /*<<< orphan*/  level_count; int /*<<< orphan*/  layer_count; } ;
struct wined3d_gl_info {int dummy; } ;
typedef  int /*<<< orphan*/  GLsizei ;
typedef  int /*<<< orphan*/  GLenum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_FALSE ; 
#define  GL_TEXTURE_2D_ARRAY 130 
#define  GL_TEXTURE_2D_MULTISAMPLE 129 
#define  GL_TEXTURE_2D_MULTISAMPLE_ARRAY 128 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (struct wined3d_texture*) ; 
 int /*<<< orphan*/  FUNC7 (struct wined3d_texture*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct wined3d_texture*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct wined3d_texture *texture,
        GLenum gl_internal_format, const struct wined3d_gl_info *gl_info)
{
    unsigned int samples = FUNC6(texture);
    GLsizei height = FUNC7(texture, 0);
    GLsizei width = FUNC8(texture, 0);

    switch (texture->target)
    {
        case GL_TEXTURE_2D_ARRAY:
            FUNC0(FUNC4(texture->target, texture->level_count,
                    gl_internal_format, width, height, texture->layer_count));
            break;
        case GL_TEXTURE_2D_MULTISAMPLE:
            FUNC0(FUNC3(texture->target, samples,
                    gl_internal_format, width, height, GL_FALSE));
            break;
        case GL_TEXTURE_2D_MULTISAMPLE_ARRAY:
            FUNC0(FUNC5(texture->target, samples,
                    gl_internal_format, width, height, texture->layer_count, GL_FALSE));
            break;
        default:
            FUNC0(FUNC2(texture->target, texture->level_count,
                    gl_internal_format, width, height));
            break;
    }

    FUNC1("allocate immutable storage");
}