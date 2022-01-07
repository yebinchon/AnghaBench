
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_opt_choice_alternatives {char const* name; int value; } ;



const char *m_opt_choice_str(const struct m_opt_choice_alternatives *choices,
                             int value)
{
    for (const struct m_opt_choice_alternatives *c = choices; c->name; c++) {
        if (c->value == value)
            return c->name;
    }
    return ((void*)0);
}
