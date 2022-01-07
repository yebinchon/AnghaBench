
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct m_opt_choice_alternatives {int value; scalar_t__ name; } ;
struct TYPE_4__ {int flags; int min; int max; struct m_opt_choice_alternatives* priv; int * type; } ;
typedef TYPE_1__ m_option_t ;


 int M_OPT_MAX ;
 int M_OPT_MIN ;
 int assert (int) ;
 int check_choice (int,int,int*,int*,int) ;
 int choice_get_min_max (TYPE_1__ const*,int*,int*) ;
 double fabs (double) ;
 int m_option_type_choice ;

__attribute__((used)) static void add_choice(const m_option_t *opt, void *val, double add, bool wrap)
{
    assert(opt->type == &m_option_type_choice);
    int dir = add > 0 ? +1 : -1;
    bool found = 0;
    int ival = *(int *)val;
    int best = 0;

    if (fabs(add) < 0.5)
        return;

    if ((opt->flags & M_OPT_MIN) && (opt->flags & M_OPT_MAX)) {
        int newval = ival + add;
        if (ival >= opt->min && ival <= opt->max &&
            newval >= opt->min && newval <= opt->max)
        {
            found = 1;
            best = newval;
        } else {
            check_choice(dir, ival, &found, &best, opt->min);
            check_choice(dir, ival, &found, &best, opt->max);
        }
    }

    for (struct m_opt_choice_alternatives *alt = opt->priv; alt->name; alt++)
        check_choice(dir, ival, &found, &best, alt->value);

    if (!found) {
        int min, max;
        choice_get_min_max(opt, &min, &max);
        best = (dir == -1) ^ wrap ? min : max;
    }

    *(int *)val = best;
}
