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
struct mp_osd_res {int /*<<< orphan*/  display_par; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct ass_state {int /*<<< orphan*/  track; int /*<<< orphan*/  render; } ;
typedef  int /*<<< orphan*/  ASS_Image ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ass_state*,struct mp_osd_res*) ; 

__attribute__((used)) static void FUNC4(struct ass_state *ass, struct mp_osd_res *res,
                       ASS_Image **img_list, bool *changed)
{
    if (!ass->render || !ass->track) {
        *img_list = NULL;
        return;
    }

    FUNC3(ass, res);

    FUNC2(ass->render, res->w, res->h);
    FUNC1(ass->render, res->display_par, 1.0);

    int ass_changed;
    *img_list = FUNC0(ass->render, ass->track, 0, &ass_changed);
    *changed |= ass_changed;
}