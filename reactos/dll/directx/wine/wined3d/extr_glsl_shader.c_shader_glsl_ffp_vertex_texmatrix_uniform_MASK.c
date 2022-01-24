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
struct wined3d_state {int dummy; } ;
struct wined3d_matrix {int /*<<< orphan*/  _11; } ;
struct wined3d_gl_info {int dummy; } ;
struct wined3d_context {struct wined3d_gl_info* gl_info; } ;
struct TYPE_2__ {int* texture_matrix_location; } ;
struct glsl_shader_prog_link {TYPE_1__ vs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int MAX_TEXTURES ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct wined3d_context const*,struct wined3d_state const*,unsigned int,struct wined3d_matrix*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(const struct wined3d_context *context,
        const struct wined3d_state *state, unsigned int tex, struct glsl_shader_prog_link *prog)
{
    const struct wined3d_gl_info *gl_info = context->gl_info;
    struct wined3d_matrix mat;

    if (tex >= MAX_TEXTURES)
        return;
    if (prog->vs.texture_matrix_location[tex] == -1)
        return;

    FUNC2(context, state, tex, &mat);
    FUNC0(FUNC3(prog->vs.texture_matrix_location[tex], 1, FALSE, &mat._11));
    FUNC1("glUniformMatrix4fv");
}