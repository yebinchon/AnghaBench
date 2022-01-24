#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct vo_x11_state {int /*<<< orphan*/  window; int /*<<< orphan*/  display; int /*<<< orphan*/  screen; int /*<<< orphan*/  rootwin; } ;
struct vo {struct vo_x11_state* x11; int /*<<< orphan*/  global; int /*<<< orphan*/  log; struct priv* priv; } ;
struct TYPE_8__ {scalar_t__ visualid; } ;
struct priv {int /*<<< orphan*/  gc; TYPE_2__ vinfo; int /*<<< orphan*/  depth; TYPE_3__* sws; struct vo* vo; } ;
struct TYPE_7__ {int /*<<< orphan*/  depth; } ;
typedef  TYPE_1__ XWindowAttributes ;
struct TYPE_9__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,char*) ; 
 int /*<<< orphan*/  TrueColor ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_3__* FUNC5 (struct vo*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct vo*) ; 
 int /*<<< orphan*/  FUNC8 (struct vo*,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct vo*) ; 

__attribute__((used)) static int FUNC10(struct vo *vo)
{
    struct priv *p = vo->priv;
    p->vo = vo;
    p->sws = FUNC5(vo);
    p->sws->log = vo->log;
    FUNC6(p->sws, vo->global);

    if (!FUNC9(vo))
        goto error;
    struct vo_x11_state *x11 = vo->x11;

    XWindowAttributes attribs;
    FUNC3(x11->display, x11->rootwin, &attribs);
    p->depth = attribs.depth;

    if (!FUNC4(x11->display, x11->screen, p->depth,
                          TrueColor, &p->vinfo))
        goto error;

    FUNC0(vo, "selected visual: %d\n", (int)p->vinfo.visualid);

    if (!FUNC8(vo, &p->vinfo, "x11"))
        goto error;

    p->gc = FUNC2(x11->display, x11->window, 0, NULL);
    FUNC1(vo, "Warning: this legacy VO has bad performance. Consider fixing "
                "your graphics drivers, or not forcing the x11 VO.\n");
    return 0;

error:
    FUNC7(vo);
    return -1;
}