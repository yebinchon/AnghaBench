
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_profile {int name; struct m_profile* next; } ;
struct m_config {struct m_profile* profiles; } ;
typedef int bstr ;


 scalar_t__ bstr_equals0 (int ,int ) ;

struct m_profile *m_config_get_profile(const struct m_config *config, bstr name)
{
    for (struct m_profile *p = config->profiles; p; p = p->next) {
        if (bstr_equals0(name, p->name))
            return p;
    }
    return ((void*)0);
}
