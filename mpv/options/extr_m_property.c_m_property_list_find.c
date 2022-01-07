
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property {scalar_t__ name; } ;


 scalar_t__ strcmp (scalar_t__,char const*) ;

struct m_property *m_property_list_find(const struct m_property *list,
                                        const char *name)
{
    for (int n = 0; list && list[n].name; n++) {
        if (strcmp(list[n].name, name) == 0)
            return (struct m_property *)&list[n];
    }
    return ((void*)0);
}
