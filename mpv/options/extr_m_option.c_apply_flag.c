
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_option {struct m_opt_choice_alternatives* priv; } ;
struct m_opt_choice_alternatives {int value; scalar_t__ name; } ;
typedef int bstr ;


 int M_OPT_INVALID ;
 int M_OPT_UNKNOWN ;
 scalar_t__ bstr_equals0 (int ,scalar_t__) ;

__attribute__((used)) static int apply_flag(const struct m_option *opt, int *val, bstr flag)
{
    struct m_opt_choice_alternatives *alt;
    for (alt = opt->priv; alt->name; alt++) {
        if (bstr_equals0(flag, alt->name)) {
            if (*val & alt->value)
                return M_OPT_INVALID;
            *val |= alt->value;
            return 0;
        }
    }
    return M_OPT_UNKNOWN;
}
