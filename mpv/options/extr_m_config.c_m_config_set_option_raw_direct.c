
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {int data; int opt; } ;
struct m_config {int dummy; } ;


 int M_OPT_UNKNOWN ;
 int M_SETOPT_FROM_CMDLINE ;
 int handle_set_opt_flags (struct m_config*,struct m_config_option*,int) ;
 int m_config_handle_special_options (struct m_config*,struct m_config_option*,void*,int) ;
 int m_config_mark_co_flags (struct m_config_option*,int) ;
 int m_config_notify_change_co (struct m_config*,struct m_config_option*) ;
 int m_option_copy (int ,int ,void*) ;

int m_config_set_option_raw_direct(struct m_config *config,
                                   struct m_config_option *co,
                                   void *data, int flags)
{
    if (!co)
        return M_OPT_UNKNOWN;

    int r = handle_set_opt_flags(config, co, flags);
    if (r <= 1)
        return r;

    r = m_config_handle_special_options(config, co, data, flags);
    if (r != M_OPT_UNKNOWN)
        return r;



    if (!co->data)
        return flags & M_SETOPT_FROM_CMDLINE ? 0 : M_OPT_UNKNOWN;

    m_option_copy(co->opt, co->data, data);

    m_config_mark_co_flags(co, flags);
    m_config_notify_change_co(config, co);

    return 0;
}
