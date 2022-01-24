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
struct mp_log {int dummy; } ;
struct GL {scalar_t__ SwapInterval; } ;
typedef  scalar_t__ EGLDisplay ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_EXTENSIONS ; 
 scalar_t__ EGL_NO_DISPLAY ; 
 scalar_t__ FUNC0 () ; 
 char* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpegl_get_proc_address ; 
 int /*<<< orphan*/  FUNC2 (struct GL*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*,struct mp_log*) ; 
 scalar_t__ swap_interval ; 

void FUNC3(struct GL *gl, struct mp_log *log)
{
    const char *egl_exts = "";
    EGLDisplay display = FUNC0();
    if (display != EGL_NO_DISPLAY)
        egl_exts = FUNC1(display, EGL_EXTENSIONS);

    FUNC2(gl, mpegl_get_proc_address, NULL, egl_exts, log);
    if (!gl->SwapInterval)
        gl->SwapInterval = swap_interval;
}