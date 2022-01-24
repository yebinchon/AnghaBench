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
struct sd {scalar_t__ start; TYPE_1__* driver; int /*<<< orphan*/  end; int /*<<< orphan*/  codec; } ;
struct dec_sub {scalar_t__ last_vo_pts; scalar_t__ start; struct sd* new_segment; struct sd* sd; int /*<<< orphan*/  end; int /*<<< orphan*/  codec; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* decode ) (struct sd*,struct sd*) ;int /*<<< orphan*/  (* uninit ) (struct sd*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dec_sub*,char*) ; 
 scalar_t__ MP_NOPTS_VALUE ; 
 int /*<<< orphan*/  FUNC1 (struct dec_sub*,char*,scalar_t__,scalar_t__) ; 
 struct sd* FUNC2 (struct dec_sub*) ; 
 int /*<<< orphan*/  FUNC3 (struct sd*) ; 
 int /*<<< orphan*/  FUNC4 (struct sd*,struct sd*) ; 
 int /*<<< orphan*/  FUNC5 (struct sd*) ; 
 int /*<<< orphan*/  FUNC6 (struct dec_sub*) ; 

__attribute__((used)) static void FUNC7(struct dec_sub *sub)
{
    if (sub->new_segment && sub->last_vo_pts != MP_NOPTS_VALUE &&
        sub->last_vo_pts >= sub->new_segment->start)
    {
        FUNC1(sub, "Switch segment: %f at %f\n", sub->new_segment->start,
                   sub->last_vo_pts);

        sub->codec = sub->new_segment->codec;
        sub->start = sub->new_segment->start;
        sub->end = sub->new_segment->end;
        struct sd *new = FUNC2(sub);
        if (new) {
            sub->sd->driver->uninit(sub->sd);
            FUNC5(sub->sd);
            sub->sd = new;
            FUNC6(sub);
        } else {
            // We'll just keep the current decoder, and feed it possibly
            // invalid data (not our fault if it crashes or something).
            FUNC0(sub, "Can't change to new codec.\n");
        }
        sub->sd->driver->decode(sub->sd, sub->new_segment);
        FUNC5(sub->new_segment);
        sub->new_segment = NULL;
    }
}