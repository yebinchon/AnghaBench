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
struct vo_chain {scalar_t__ dec_src; scalar_t__* pins; TYPE_2__* filter; scalar_t__ filter_src; struct track* track; } ;
struct track {TYPE_1__* dec; struct vo_chain* vo_c; } ;
struct TYPE_4__ {struct vo_chain* f; } ;
struct TYPE_3__ {struct vo_chain* f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct vo_chain*) ; 

__attribute__((used)) static void FUNC3(struct vo_chain *vo_c)
{
    struct track *track = vo_c->track;
    if (track) {
        FUNC0(track->vo_c == vo_c);
        track->vo_c = NULL;
        if (vo_c->dec_src)
            FUNC0(track->dec->f->pins[0] == vo_c->dec_src);
        FUNC2(track->dec->f);
        track->dec = NULL;
    }

    if (vo_c->filter_src)
        FUNC1(vo_c->filter_src);

    FUNC2(vo_c->filter->f);
    FUNC2(vo_c);
    // this does not free the VO
}