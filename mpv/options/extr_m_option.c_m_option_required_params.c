
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct m_opt_choice_alternatives {scalar_t__ name; } ;
struct TYPE_4__ {int flags; struct m_opt_choice_alternatives* priv; TYPE_2__* type; } ;
typedef TYPE_1__ m_option_t ;
struct TYPE_5__ {int flags; } ;


 int M_OPT_OPTIONAL_PARAM ;
 int M_OPT_TYPE_OPTIONAL_PARAM ;
 TYPE_2__ m_option_type_choice ;
 scalar_t__ strcmp (scalar_t__,char*) ;

int m_option_required_params(const m_option_t *opt)
{
    if (opt->type->flags & M_OPT_TYPE_OPTIONAL_PARAM)
        return 0;
    if (opt->flags & M_OPT_OPTIONAL_PARAM)
        return 0;
    if (opt->type == &m_option_type_choice) {
        struct m_opt_choice_alternatives *alt;
        for (alt = opt->priv; alt->name; alt++) {
            if (strcmp(alt->name, "yes") == 0)
                return 0;
        }
    }
    return 1;
}
