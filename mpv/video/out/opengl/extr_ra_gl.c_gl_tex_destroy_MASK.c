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
struct ra_tex_gl {int /*<<< orphan*/  texture; scalar_t__ fbo; scalar_t__ own_objects; int /*<<< orphan*/  pbo; struct ra_tex_gl* priv; } ;
struct ra_tex {int /*<<< orphan*/  texture; scalar_t__ fbo; scalar_t__ own_objects; int /*<<< orphan*/  pbo; struct ra_tex* priv; } ;
struct ra {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* DeleteTextures ) (int,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* DeleteFramebuffers ) (int,scalar_t__*) ;} ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra*,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (struct ra*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ra_tex_gl*) ; 

__attribute__((used)) static void FUNC5(struct ra *ra, struct ra_tex *tex)
{
    GL *gl = FUNC1(ra);
    struct ra_tex_gl *tex_gl = tex->priv;

    FUNC0(ra, &tex_gl->pbo);

    if (tex_gl->own_objects) {
        if (tex_gl->fbo)
            gl->DeleteFramebuffers(1, &tex_gl->fbo);

        gl->DeleteTextures(1, &tex_gl->texture);
    }
    FUNC4(tex_gl);
    FUNC4(tex);
}