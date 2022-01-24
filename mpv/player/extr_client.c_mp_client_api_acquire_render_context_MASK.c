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
struct mpv_render_context {int dummy; } ;
struct mp_client_api {int /*<<< orphan*/  lock; struct mpv_render_context* render_context; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mpv_render_context*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct mpv_render_context *
FUNC3(struct mp_client_api *ca)
{
    struct mpv_render_context *res = NULL;
    FUNC1(&ca->lock);
    if (ca->render_context && FUNC0(ca->render_context))
        res = ca->render_context;
    FUNC2(&ca->lock);
    return res;
}