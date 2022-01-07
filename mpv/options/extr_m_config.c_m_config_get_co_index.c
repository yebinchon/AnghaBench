
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {int dummy; } ;
struct m_config {struct m_config_option* opts; } ;



struct m_config_option *m_config_get_co_index(struct m_config *config, int index)
{
    return &config->opts[index];
}
