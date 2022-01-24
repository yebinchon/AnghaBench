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
struct vaapi_gl_mapper_priv {scalar_t__* gl_textures; } ;
struct ra_hwdec_mapper {int /*<<< orphan*/  ra; struct priv* priv; } ;
struct priv {struct vaapi_gl_mapper_priv* interop_mapper_priv; int /*<<< orphan*/ * tex; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* DeleteTextures ) (int,scalar_t__*) ;} ;
typedef  TYPE_1__ GL ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (struct vaapi_gl_mapper_priv*) ; 

__attribute__((used)) static void FUNC4(const struct ra_hwdec_mapper *mapper)
{
    struct priv *p_mapper = mapper->priv;
    struct vaapi_gl_mapper_priv *p = p_mapper->interop_mapper_priv;

    if (p) {
        GL *gl = FUNC0(mapper->ra);
        gl->DeleteTextures(4, p->gl_textures);
        for (int n = 0; n < 4; n++) {
            p->gl_textures[n] = 0;
            FUNC1(mapper->ra, &p_mapper->tex[n]);
        }
        FUNC3(p);
        p_mapper->interop_mapper_priv = NULL;
    }
}