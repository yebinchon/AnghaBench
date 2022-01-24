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
struct TYPE_4__ {scalar_t__ y0; scalar_t__ x0; } ;
struct vo_win_geometry {TYPE_2__ win; } ;
struct vo {int /*<<< orphan*/  dheight; int /*<<< orphan*/  dwidth; TYPE_1__* opts; struct priv* priv; } ;
struct priv {scalar_t__ y; scalar_t__ x; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct mp_rect {int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {scalar_t__ fullscreen; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*,struct vo_win_geometry*) ; 
 int /*<<< orphan*/  FUNC3 (struct vo*,struct mp_rect*,struct vo_win_geometry*) ; 

__attribute__((used)) static int FUNC4(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (vo->opts->fullscreen) {
        vo->dwidth = p->w;
        vo->dheight = p->h;
        p->x = p->y = 0;
    } else {
        struct vo_win_geometry geo;
        struct mp_rect screenrc = {0, 0, p->w, p->h};

        FUNC3(vo, &screenrc, &geo);
        FUNC2(vo, &geo);

        p->x = geo.win.x0;
        p->y = geo.win.y0;
    }

    FUNC1(vo);

    if (FUNC0(vo) < 0)
        return -1;

    return 0;
}