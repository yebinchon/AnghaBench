
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int option_value; int name_flags; } ;
typedef TYPE_1__ ssl_switch_tbl ;
typedef int ssl_conf_cmd_tbl ;
typedef int SSL_CONF_CTX ;


 size_t OSSL_NELEM (TYPE_1__*) ;
 TYPE_1__* ssl_cmd_switches ;
 int const* ssl_conf_cmds ;
 int ssl_set_option (int *,int ,int ,int) ;

__attribute__((used)) static int ctrl_switch_option(SSL_CONF_CTX *cctx, const ssl_conf_cmd_tbl * cmd)
{

    size_t idx = cmd - ssl_conf_cmds;
    const ssl_switch_tbl *scmd;

    if (idx >= OSSL_NELEM(ssl_cmd_switches))
        return 0;

    scmd = ssl_cmd_switches + idx;
    ssl_set_option(cctx, scmd->name_flags, scmd->option_value, 1);
    return 1;
}
