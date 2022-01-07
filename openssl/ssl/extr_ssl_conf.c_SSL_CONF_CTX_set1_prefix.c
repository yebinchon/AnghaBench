
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* prefix; int prefixlen; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int OPENSSL_free (char*) ;
 char* OPENSSL_strdup (char const*) ;
 int strlen (char*) ;

int SSL_CONF_CTX_set1_prefix(SSL_CONF_CTX *cctx, const char *pre)
{
    char *tmp = ((void*)0);
    if (pre) {
        tmp = OPENSSL_strdup(pre);
        if (tmp == ((void*)0))
            return 0;
    }
    OPENSSL_free(cctx->prefix);
    cctx->prefix = tmp;
    if (tmp)
        cctx->prefixlen = strlen(tmp);
    else
        cctx->prefixlen = 0;
    return 1;
}
