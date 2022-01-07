
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_profile {int dummy; } ;
struct m_config {int dummy; } ;


 int bstr0 (char*) ;
 struct m_profile* m_config_get_profile (struct m_config const*,int ) ;

struct m_profile *m_config_get_profile0(const struct m_config *config,
                                        char *name)
{
    return m_config_get_profile(config, bstr0(name));
}
