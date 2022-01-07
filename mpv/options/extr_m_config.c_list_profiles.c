
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_profile {char* desc; int name; struct m_profile* next; } ;
struct m_config {struct m_profile* profiles; } ;


 int MP_INFO (struct m_config*,char*,...) ;

__attribute__((used)) static void list_profiles(struct m_config *config)
{
    MP_INFO(config, "Available profiles:\n");
    for (struct m_profile *p = config->profiles; p; p = p->next)
        MP_INFO(config, "\t%s\t%s\n", p->name, p->desc ? p->desc : "");
    MP_INFO(config, "\n");
}
