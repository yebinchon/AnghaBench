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
struct track {TYPE_1__* dec; struct ao_chain* ao_c; } ;
struct ao_chain {scalar_t__ dec_src; scalar_t__* pins; struct ao_chain* ao_buffer; struct ao_chain* output_frame; TYPE_2__* filter; scalar_t__ filter_src; struct track* track; } ;
struct TYPE_4__ {struct ao_chain* f; } ;
struct TYPE_3__ {struct ao_chain* f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct ao_chain*) ; 

__attribute__((used)) static void FUNC3(struct ao_chain *ao_c)
{
    struct track *track = ao_c->track;
    if (track) {
        FUNC0(track->ao_c == ao_c);
        track->ao_c = NULL;
        if (ao_c->dec_src)
            FUNC0(track->dec->f->pins[0] == ao_c->dec_src);
        FUNC2(track->dec->f);
        track->dec = NULL;
    }

    if (ao_c->filter_src)
        FUNC1(ao_c->filter_src);

    FUNC2(ao_c->filter->f);
    FUNC2(ao_c->output_frame);
    FUNC2(ao_c->ao_buffer);
    FUNC2(ao_c);
}