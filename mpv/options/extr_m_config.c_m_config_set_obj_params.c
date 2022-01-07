
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int dummy; } ;
struct mp_log {int dummy; } ;
struct m_obj_desc {int dummy; } ;
struct m_config {int dummy; } ;
typedef int bstr ;


 int bstr0 (char*) ;
 scalar_t__ m_config_set_option_cli (struct m_config*,int ,int ,int ) ;

__attribute__((used)) static int m_config_set_obj_params(struct m_config *config, struct mp_log *log,
                                   struct mpv_global *global,
                                   struct m_obj_desc *desc, char **args)
{
    for (int n = 0; args && args[n * 2 + 0]; n++) {
        bstr opt = bstr0(args[n * 2 + 0]);
        bstr val = bstr0(args[n * 2 + 1]);
        if (m_config_set_option_cli(config, opt, val, 0) < 0)
            return -1;
    }

    return 0;
}
