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
struct sub_bitmaps {int dummy; } ;
struct osd_state {int /*<<< orphan*/  draw_cache; } ;
struct draw_on_image_closure {int changed; int /*<<< orphan*/  dest; int /*<<< orphan*/  pool; struct osd_state* osd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct sub_bitmaps*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct osd_state*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(void *ctx, struct sub_bitmaps *imgs)
{
    struct draw_on_image_closure *closure = ctx;
    struct osd_state *osd = closure->osd;
    if (!FUNC1(closure->pool, closure->dest))
        return; // on OOM, skip
    FUNC0(&osd->draw_cache, closure->dest, imgs);
    FUNC2(osd, osd->draw_cache);
    closure->changed = true;
}