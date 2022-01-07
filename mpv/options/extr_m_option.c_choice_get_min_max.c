
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_option {int flags; int max; int min; struct m_opt_choice_alternatives* priv; int * type; } ;
struct m_opt_choice_alternatives {int value; scalar_t__ name; } ;


 int INT_MAX ;
 int INT_MIN ;
 int MPMAX (int,int ) ;
 int MPMIN (int,int ) ;
 int M_OPT_MAX ;
 int M_OPT_MIN ;
 int assert (int) ;
 int m_option_type_choice ;

__attribute__((used)) static void choice_get_min_max(const struct m_option *opt, int *min, int *max)
{
    assert(opt->type == &m_option_type_choice);
    *min = INT_MAX;
    *max = INT_MIN;
    for (struct m_opt_choice_alternatives *alt = opt->priv; alt->name; alt++) {
        *min = MPMIN(*min, alt->value);
        *max = MPMAX(*max, alt->value);
    }
    if ((opt->flags & M_OPT_MIN) && (opt->flags & M_OPT_MAX)) {
        *min = MPMIN(*min, opt->min);
        *max = MPMAX(*max, opt->max);
    }
}
