
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct m_opt_backup {TYPE_1__* co; int backup; struct m_opt_backup* next; } ;
struct m_config {struct m_opt_backup* backup_opts; } ;
struct TYPE_2__ {int is_set_locally; int opt; } ;


 int m_config_set_option_raw (struct m_config*,TYPE_1__*,int ,int ) ;
 int m_option_free (int ,int ) ;
 int talloc_free (struct m_opt_backup*) ;

void m_config_restore_backups(struct m_config *config)
{
    while (config->backup_opts) {
        struct m_opt_backup *bc = config->backup_opts;
        config->backup_opts = bc->next;

        m_config_set_option_raw(config, bc->co, bc->backup, 0);

        m_option_free(bc->co->opt, bc->backup);
        bc->co->is_set_locally = 0;
        talloc_free(bc);
    }
}
