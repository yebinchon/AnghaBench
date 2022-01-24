#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ (* p_glGetError ) () ;} ;
struct TYPE_4__ {TYPE_1__ gl; } ;
struct wined3d_gl_info {TYPE_2__ gl_ops; scalar_t__* supported; } ;
typedef  scalar_t__ GLint ;

/* Variables and functions */
 size_t ARB_DEBUG_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__,char const*,char const*,unsigned int) ; 
 scalar_t__ GL_NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 () ; 
 scalar_t__ FUNC4 () ; 

void FUNC5(const struct wined3d_gl_info *gl_info,
        const char *file, unsigned int line, const char *name)
{
    GLint err;

    if (gl_info->supported[ARB_DEBUG_OUTPUT] || (err = gl_info->gl_ops.gl.p_glGetError()) == GL_NO_ERROR)
    {
        FUNC1("%s call ok %s / %u.\n", name, file, line);
        return;
    }

    do
    {
        FUNC0(">>>>>>> %s (%#x) from %s @ %s / %u.\n",
                FUNC2(err), err, name, file,line);
        err = gl_info->gl_ops.gl.p_glGetError();
    } while (err != GL_NO_ERROR);
}