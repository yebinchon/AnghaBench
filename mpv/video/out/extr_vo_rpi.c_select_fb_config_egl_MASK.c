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
struct mp_egl_rpi {int /*<<< orphan*/  egl_display; } ;
typedef  int EGLint ;
typedef  int /*<<< orphan*/ * EGLConfig ;

/* Variables and functions */
 int EGL_BLUE_SIZE ; 
 int EGL_DEPTH_SIZE ; 
 int EGL_GREEN_SIZE ; 
 int EGL_NONE ; 
 int EGL_OPENGL_ES2_BIT ; 
 int EGL_RED_SIZE ; 
 int EGL_RENDERABLE_TYPE ; 
 int EGL_SURFACE_TYPE ; 
 int EGL_WINDOW_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct mp_egl_rpi*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ **,int,int*) ; 

__attribute__((used)) static EGLConfig FUNC2(struct mp_egl_rpi *p)
{
    EGLint attributes[] = {
        EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
        EGL_RED_SIZE, 8,
        EGL_GREEN_SIZE, 8,
        EGL_BLUE_SIZE, 8,
        EGL_DEPTH_SIZE, 0,
        EGL_RENDERABLE_TYPE, EGL_OPENGL_ES2_BIT,
        EGL_NONE
    };

    EGLint config_count;
    EGLConfig config;

    FUNC1(p->egl_display, attributes, &config, 1, &config_count);

    if (!config_count) {
        FUNC0(p, "Could find EGL configuration!\n");
        return NULL;
    }

    return config;
}