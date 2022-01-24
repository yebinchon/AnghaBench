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
struct wined3d_blitter {int /*<<< orphan*/ * next; int /*<<< orphan*/ * ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct wined3d_blitter*) ; 
 int /*<<< orphan*/  cpu_blitter_ops ; 
 struct wined3d_blitter* FUNC1 (int) ; 

struct wined3d_blitter *FUNC2(void)
{
    struct wined3d_blitter *blitter;

    if (!(blitter = FUNC1(sizeof(*blitter))))
        return NULL;

    FUNC0("Created blitter %p.\n", blitter);

    blitter->ops = &cpu_blitter_ops;
    blitter->next = NULL;

    return blitter;
}