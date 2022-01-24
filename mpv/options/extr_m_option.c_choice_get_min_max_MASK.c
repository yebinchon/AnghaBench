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
struct m_option {int flags; int /*<<< orphan*/  max; int /*<<< orphan*/  min; struct m_opt_choice_alternatives* priv; int /*<<< orphan*/ * type; } ;
struct m_opt_choice_alternatives {int /*<<< orphan*/  value; scalar_t__ name; } ;

/* Variables and functions */
 int INT_MAX ; 
 int INT_MIN ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int M_OPT_MAX ; 
 int M_OPT_MIN ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  m_option_type_choice ; 

__attribute__((used)) static void FUNC3(const struct m_option *opt, int *min, int *max)
{
    FUNC2(opt->type == &m_option_type_choice);
    *min = INT_MAX;
    *max = INT_MIN;
    for (struct m_opt_choice_alternatives *alt = opt->priv; alt->name; alt++) {
        *min = FUNC1(*min, alt->value);
        *max = FUNC0(*max, alt->value);
    }
    if ((opt->flags & M_OPT_MIN) && (opt->flags & M_OPT_MAX)) {
        *min = FUNC1(*min, opt->min);
        *max = FUNC0(*max, opt->max);
    }
}