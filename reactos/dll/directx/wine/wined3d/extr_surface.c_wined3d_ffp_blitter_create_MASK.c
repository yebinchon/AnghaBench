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
struct wined3d_gl_info {int dummy; } ;
struct wined3d_blitter {struct wined3d_blitter* next; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_blitter*) ; 
 int /*<<< orphan*/  ffp_blitter_ops ; 
 struct wined3d_blitter* FUNC1 (int) ; 

void FUNC2(struct wined3d_blitter **next, const struct wined3d_gl_info *gl_info)
{
    struct wined3d_blitter *blitter;

    if (!(blitter = FUNC1(sizeof(*blitter))))
        return;

    FUNC0("Created blitter %p.\n", blitter);

    blitter->ops = &ffp_blitter_ops;
    blitter->next = *next;
    *next = blitter;
}