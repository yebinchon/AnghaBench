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
struct wined3d_format {scalar_t__ gl_view_class; int /*<<< orphan*/  id; int /*<<< orphan*/  rtInternal; int /*<<< orphan*/  glGammaInternal; int /*<<< orphan*/  glInternal; } ;
typedef  scalar_t__ GLenum ;

/* Variables and functions */
 scalar_t__ GL_NONE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct wined3d_format *format)
{
    GLenum internal_view_class, gamma_view_class, rt_view_class;

    internal_view_class = FUNC2(format->glInternal);
    gamma_view_class = FUNC2(format->glGammaInternal);
    rt_view_class = FUNC2(format->rtInternal);

    if (internal_view_class == gamma_view_class || gamma_view_class == rt_view_class)
    {
        format->gl_view_class = internal_view_class;
        FUNC0("Format %s is member of GL view class %#x.\n",
                FUNC1(format->id), format->gl_view_class);
    }
    else
    {
        format->gl_view_class = GL_NONE;
    }
}