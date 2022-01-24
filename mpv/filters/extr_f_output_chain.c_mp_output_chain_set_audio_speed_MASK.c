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
struct mp_output_chain {TYPE_1__* f; } ;
struct chain {int /*<<< orphan*/  num_post_filters; int /*<<< orphan*/  post_filters; int /*<<< orphan*/  num_user_filters; int /*<<< orphan*/  user_filters; } ;
struct TYPE_2__ {struct chain* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,double*) ; 

void FUNC1(struct mp_output_chain *c,
                                     double speed, double resample)
{
    struct chain *p = c->f->priv;

    // We always resample with the final libavresample instance.
    FUNC0(p->post_filters, p->num_post_filters, true, &resample);

    // If users have filters like "scaletempo" insert anywhere, use that,
    // otherwise use the builtin ones.
    FUNC0(p->user_filters, p->num_user_filters, false, &speed);
    FUNC0(p->post_filters, p->num_post_filters, false, &speed);
}