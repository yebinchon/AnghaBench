#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ra_hwdec_mapper {int /*<<< orphan*/ * tex; int /*<<< orphan*/  ra; struct priv* priv; } ;
struct priv {scalar_t__ query9; scalar_t__ texture9; scalar_t__ surface9; scalar_t__ egl_surface; scalar_t__ egl_display; int /*<<< orphan*/  gl_texture; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* DeleteTextures ) (int,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  EGL_BACK_BUFFER ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;
    GL *gl = FUNC5(mapper->ra);

    FUNC6(mapper->ra, &mapper->tex[0]);
    gl->DeleteTextures(1, &p->gl_texture);

    if (p->egl_display && p->egl_surface) {
        FUNC4(p->egl_display, p->egl_surface, EGL_BACK_BUFFER);
        FUNC3(p->egl_display, p->egl_surface);
    }

    if (p->surface9)
        FUNC1(p->surface9);

    if (p->texture9)
        FUNC2(p->texture9);

    if (p->query9)
        FUNC0(p->query9);
}