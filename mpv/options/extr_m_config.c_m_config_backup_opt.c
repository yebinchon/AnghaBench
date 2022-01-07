
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_config_option {int dummy; } ;
struct m_config {int dummy; } ;


 int MP_ERR (struct m_config*,char*,char const*) ;
 int bstr0 (char const*) ;
 int ensure_backup (struct m_config*,struct m_config_option*) ;
 struct m_config_option* m_config_get_co (struct m_config*,int ) ;

void m_config_backup_opt(struct m_config *config, const char *opt)
{
    struct m_config_option *co = m_config_get_co(config, bstr0(opt));
    if (co) {
        ensure_backup(config, co);
    } else {
        MP_ERR(config, "Option %s not found.\n", opt);
    }
}
