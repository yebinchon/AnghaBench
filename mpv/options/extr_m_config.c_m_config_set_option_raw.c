
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {int dummy; } ;
struct m_config {int (* option_set_callback ) (int ,struct m_config_option*,void*,int) ;int option_set_callback_cb; } ;


 int M_OPT_UNKNOWN ;
 int handle_set_opt_flags (struct m_config*,struct m_config_option*,int) ;
 int m_config_set_option_raw_direct (struct m_config*,struct m_config_option*,void*,int) ;
 int stub1 (int ,struct m_config_option*,void*,int) ;

int m_config_set_option_raw(struct m_config *config, struct m_config_option *co,
                            void *data, int flags)
{
    if (!co)
        return M_OPT_UNKNOWN;

    if (config->option_set_callback) {
        int r = handle_set_opt_flags(config, co, flags);
        if (r <= 1)
            return r;

        return config->option_set_callback(config->option_set_callback_cb,
                                           co, data, flags);
    } else {
        return m_config_set_option_raw_direct(config, co, data, flags);
    }
}
