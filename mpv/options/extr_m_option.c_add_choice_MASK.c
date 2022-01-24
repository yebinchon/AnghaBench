#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct m_opt_choice_alternatives {int value; scalar_t__ name; } ;
struct TYPE_4__ {int flags; int min; int max; struct m_opt_choice_alternatives* priv; int /*<<< orphan*/ * type; } ;
typedef  TYPE_1__ m_option_t ;

/* Variables and functions */
 int M_OPT_MAX ; 
 int M_OPT_MIN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int*,int*) ; 
 double FUNC3 (double) ; 
 int /*<<< orphan*/  m_option_type_choice ; 

__attribute__((used)) static void FUNC4(const m_option_t *opt, void *val, double add, bool wrap)
{
    FUNC0(opt->type == &m_option_type_choice);
    int dir = add > 0 ? +1 : -1;
    bool found = false;
    int ival = *(int *)val;
    int best = 0; // init. value unused

    if (FUNC3(add) < 0.5)
        return;

    if ((opt->flags & M_OPT_MIN) && (opt->flags & M_OPT_MAX)) {
        int newval = ival + add;
        if (ival >= opt->min && ival <= opt->max &&
            newval >= opt->min && newval <= opt->max)
        {
            found = true;
            best = newval;
        } else {
            FUNC1(dir, ival, &found, &best, opt->min);
            FUNC1(dir, ival, &found, &best, opt->max);
        }
    }

    for (struct m_opt_choice_alternatives *alt = opt->priv; alt->name; alt++)
        FUNC1(dir, ival, &found, &best, alt->value);

    if (!found) {
        int min, max;
        FUNC2(opt, &min, &max);
        best = (dir == -1) ^ wrap ? min : max;
    }

    *(int *)val = best;
}