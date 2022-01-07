
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct m_opt_choice_alternatives {int value; scalar_t__ name; } ;
struct TYPE_3__ {int flags; int min; int max; struct m_opt_choice_alternatives* priv; } ;
typedef TYPE_1__ m_option_t ;


 int M_OPT_MAX ;
 int M_OPT_MIN ;
 int abort () ;

__attribute__((used)) static struct m_opt_choice_alternatives *get_choice(const m_option_t *opt,
                                                    const void *val, int *out_val)
{
    int v = *(int *)val;
    struct m_opt_choice_alternatives *alt;
    for (alt = opt->priv; alt->name; alt++) {
        if (alt->value == v)
            return alt;
    }
    if ((opt->flags & M_OPT_MIN) && (opt->flags & M_OPT_MAX)) {
        if (v >= opt->min && v <= opt->max) {
            *out_val = v;
            return ((void*)0);
        }
    }
    abort();
}
