
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ prefixlen; int flags; scalar_t__ prefix; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int SSL_CONF_FLAG_CMDLINE ;
 int SSL_CONF_FLAG_FILE ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,scalar_t__,scalar_t__) ;
 scalar_t__ strncmp (char const*,scalar_t__,scalar_t__) ;

__attribute__((used)) static int ssl_conf_cmd_skip_prefix(SSL_CONF_CTX *cctx, const char **pcmd)
{
    if (pcmd == ((void*)0) || *pcmd == ((void*)0))
        return 0;

    if (cctx->prefix) {
        if (strlen(*pcmd) <= cctx->prefixlen)
            return 0;
        if (cctx->flags & SSL_CONF_FLAG_CMDLINE &&
            strncmp(*pcmd, cctx->prefix, cctx->prefixlen))
            return 0;
        if (cctx->flags & SSL_CONF_FLAG_FILE &&
            strncasecmp(*pcmd, cctx->prefix, cctx->prefixlen))
            return 0;
        *pcmd += cctx->prefixlen;
    } else if (cctx->flags & SSL_CONF_FLAG_CMDLINE) {
        if (**pcmd != '-' || !(*pcmd)[1])
            return 0;
        *pcmd += 1;
    }
    return 1;
}
