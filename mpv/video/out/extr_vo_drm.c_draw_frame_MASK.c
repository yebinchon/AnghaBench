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
struct vo_frame {int /*<<< orphan*/  current; int /*<<< orphan*/  redraw; int /*<<< orphan*/  repeat; int /*<<< orphan*/  still; } ;
struct vo {struct priv* priv; } ;
struct priv {size_t front_buf; struct framebuffer* bufs; int /*<<< orphan*/  still; int /*<<< orphan*/  active; } ;
struct framebuffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,int /*<<< orphan*/ ,struct framebuffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*,struct framebuffer*) ; 
 struct framebuffer* FUNC2 (struct vo*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct vo *vo, struct vo_frame *frame)
{
    struct priv *p = vo->priv;

    if (!p->active)
        return;

    p->still = frame->still;

    // we redraw the entire image when OSD needs to be redrawn
    const bool repeat = frame->repeat && !frame->redraw;

    struct framebuffer *fb =  &p->bufs[p->front_buf];
    if (!repeat) {
        fb = FUNC2(vo);
        FUNC0(vo, FUNC3(frame->current), fb);
    }

    FUNC1(vo, fb);
}