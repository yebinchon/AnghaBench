
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config {int num_opts; } ;



int m_config_get_co_count(struct m_config *config)
{
    return config->num_opts;
}
