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
struct vo {struct priv* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  ra; } ;
struct priv {scalar_t__ osd_overlay; int /*<<< orphan*/  update; TYPE_1__ egl; int /*<<< orphan*/ * gl_video; scalar_t__ window; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (p->window)
        FUNC3(p->update, p->window);
    p->window = 0;

    FUNC0(p->gl_video);
    p->gl_video = NULL;
    FUNC2(&p->egl.ra);
    FUNC1(&p->egl);

    if (p->osd_overlay)
        FUNC3(p->update, p->osd_overlay);
    p->osd_overlay = 0;
}