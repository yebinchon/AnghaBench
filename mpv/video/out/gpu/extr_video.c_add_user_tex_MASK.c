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
struct gl_video {int /*<<< orphan*/  num_user_textures; int /*<<< orphan*/  user_textures; int /*<<< orphan*/  ra; } ;
struct TYPE_2__ {int /*<<< orphan*/  initial_data; } ;
struct gl_user_shader_tex {int /*<<< orphan*/  tex; TYPE_1__ params; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gl_user_shader_tex) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3(void *priv, struct gl_user_shader_tex tex)
{
    struct gl_video *p = priv;

    tex.tex = FUNC2(p->ra, &tex.params);
    FUNC1(&tex.params.initial_data);

    if (!tex.tex)
        return false;

    FUNC0(p, p->user_textures, p->num_user_textures, tex);
    return true;
}