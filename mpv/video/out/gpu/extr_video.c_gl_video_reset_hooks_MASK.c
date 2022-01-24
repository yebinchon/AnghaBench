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
struct gl_video {int num_tex_hooks; int num_user_textures; TYPE_1__* user_textures; int /*<<< orphan*/  ra; TYPE_2__* tex_hooks; } ;
struct TYPE_4__ {int /*<<< orphan*/  priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  tex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gl_video *p)
{
    for (int i = 0; i < p->num_tex_hooks; i++)
        FUNC1(p->tex_hooks[i].priv);

    for (int i = 0; i < p->num_user_textures; i++)
        FUNC0(p->ra, &p->user_textures[i].tex);

    p->num_tex_hooks = 0;
    p->num_user_textures = 0;
}