
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int value_type; } ;
typedef TYPE_1__ ssl_conf_cmd_tbl ;
typedef int SSL_CONF_CTX ;


 int SSL_CONF_TYPE_UNKNOWN ;
 TYPE_1__* ssl_conf_cmd_lookup (int *,char const*) ;
 scalar_t__ ssl_conf_cmd_skip_prefix (int *,char const**) ;

int SSL_CONF_cmd_value_type(SSL_CONF_CTX *cctx, const char *cmd)
{
    if (ssl_conf_cmd_skip_prefix(cctx, &cmd)) {
        const ssl_conf_cmd_tbl *runcmd;
        runcmd = ssl_conf_cmd_lookup(cctx, cmd);
        if (runcmd)
            return runcmd->value_type;
    }
    return SSL_CONF_TYPE_UNKNOWN;
}
