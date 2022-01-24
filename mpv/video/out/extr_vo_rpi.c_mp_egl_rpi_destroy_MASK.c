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
struct mp_egl_rpi {int /*<<< orphan*/ * gl; scalar_t__ egl_display; scalar_t__ egl_context; scalar_t__ egl_surface; } ;

/* Variables and functions */
 scalar_t__ EGL_NO_CONTEXT ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 int /*<<< orphan*/  EGL_NO_SURFACE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct mp_egl_rpi *p)
{
    if (p->egl_display) {
        FUNC2(p->egl_display, EGL_NO_SURFACE, EGL_NO_SURFACE,
                       EGL_NO_CONTEXT);
    }
    if (p->egl_surface)
        FUNC1(p->egl_display, p->egl_surface);
    if (p->egl_context)
        FUNC0(p->egl_display, p->egl_context);
    p->egl_context = EGL_NO_CONTEXT;
    FUNC3();
    p->egl_display = EGL_NO_DISPLAY;
    FUNC4(p->gl);
    p->gl = NULL;
}