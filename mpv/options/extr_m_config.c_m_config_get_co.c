
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_config_option {TYPE_1__* opt; } ;
struct m_config {int dummy; } ;
struct bstr {int dummy; } ;
struct TYPE_2__ {int * type; } ;


 struct m_config_option* m_config_get_co_any (struct m_config const*,struct bstr) ;
 int m_option_type_cli_alias ;

struct m_config_option *m_config_get_co(const struct m_config *config,
                                        struct bstr name)
{
    struct m_config_option *co = m_config_get_co_any(config, name);


    if (co && co->opt->type == &m_option_type_cli_alias)
        co = ((void*)0);
    return co;
}
