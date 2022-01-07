
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_profile {scalar_t__ num_opts; int name; } ;
struct m_config {int dummy; } ;


 struct m_profile* m_config_add_profile (struct m_config*,int *) ;
 int m_config_set_profile (struct m_config*,int ,int) ;

void m_config_finish_default_profile(struct m_config *config, int flags)
{
    struct m_profile *p = m_config_add_profile(config, ((void*)0));
    m_config_set_profile(config, p->name, flags);
    p->num_opts = 0;
}
