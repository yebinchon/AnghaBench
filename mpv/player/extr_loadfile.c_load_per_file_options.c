
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct playlist_param {int value; int name; } ;
typedef int m_config_t ;


 int M_SETOPT_BACKUP ;
 int m_config_set_option_cli (int *,int ,int ,int ) ;

__attribute__((used)) static void load_per_file_options(m_config_t *conf,
                                  struct playlist_param *params,
                                  int params_count)
{
    for (int n = 0; n < params_count; n++) {
        m_config_set_option_cli(conf, params[n].name, params[n].value,
                                M_SETOPT_BACKUP);
    }
}
