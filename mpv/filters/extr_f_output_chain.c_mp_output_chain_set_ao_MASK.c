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
struct mp_output_chain {TYPE_1__* f; } ;
struct mp_chmap {int /*<<< orphan*/  member_0; } ;
struct TYPE_4__ {int ao_needs_update; int /*<<< orphan*/  output_aformat; } ;
struct chain {TYPE_2__ public; int /*<<< orphan*/  convert; struct ao* ao; } ;
struct ao {int dummy; } ;
struct TYPE_3__ {struct chain* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ao*,int*,int*,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct mp_chmap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(struct mp_output_chain *c, struct ao *ao)
{
    struct chain *p = c->f->priv;

    FUNC1(p->public.ao_needs_update); // can't just call it any time
    FUNC1(!p->ao);

    p->public.ao_needs_update = false;

    p->ao = ao;

    int out_format = 0;
    int out_rate = 0;
    struct mp_chmap out_channels = {0};
    FUNC0(p->ao, &out_rate, &out_format, &out_channels);

    FUNC6(p->convert);
    FUNC3(p->convert, out_format);
    FUNC5(p->convert, out_rate);
    FUNC4(p->convert, &out_channels);

    FUNC7(p->convert);

    // Just to get the format change logged again.
    FUNC2(p->public.output_aformat);
}