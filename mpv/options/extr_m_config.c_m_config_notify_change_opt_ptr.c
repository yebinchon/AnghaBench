
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {void* data; } ;
struct m_config {int num_opts; struct m_config_option* opts; } ;


 int assert (int) ;
 int m_config_notify_change_co (struct m_config*,struct m_config_option*) ;

void m_config_notify_change_opt_ptr(struct m_config *config, void *ptr)
{
    for (int n = 0; n < config->num_opts; n++) {
        struct m_config_option *co = &config->opts[n];
        if (co->data == ptr) {
            m_config_notify_change_co(config, co);
            return;
        }
    }


    assert(0);
}
