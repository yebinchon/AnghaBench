
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {int is_set_from_cmdline; int is_set_from_config; } ;


 int M_SETOPT_FROM_CMDLINE ;
 int M_SETOPT_FROM_CONFIG_FILE ;

void m_config_mark_co_flags(struct m_config_option *co, int flags)
{
    if (flags & M_SETOPT_FROM_CMDLINE)
        co->is_set_from_cmdline = 1;

    if (flags & M_SETOPT_FROM_CONFIG_FILE)
        co->is_set_from_config = 1;
}
