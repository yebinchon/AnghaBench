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
typedef  int /*<<< orphan*/  GLuint ;
typedef  int /*<<< orphan*/  GLint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_LINK_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  d3d_shader ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct wined3d_gl_info const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wined3d_gl_info const*,int /*<<< orphan*/ ) ; 

void FUNC7(const struct wined3d_gl_info *gl_info, GLuint program)
{
    GLint tmp;

    if (!FUNC3(d3d_shader) && !FUNC1(d3d_shader))
        return;

    FUNC2(FUNC4(program, GL_LINK_STATUS, &tmp));
    if (!tmp)
    {
        FUNC0("Program %u link status invalid.\n", program);
        FUNC6(gl_info, program);
    }

    FUNC5(gl_info, program, TRUE);
}