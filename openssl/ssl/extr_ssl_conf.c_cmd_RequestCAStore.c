
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * canames; } ;
typedef TYPE_1__ SSL_CONF_CTX ;


 int SSL_add_store_cert_subjects_to_stack (int *,char const*) ;
 int * sk_X509_NAME_new_null () ;

__attribute__((used)) static int cmd_RequestCAStore(SSL_CONF_CTX *cctx, const char *value)
{
    if (cctx->canames == ((void*)0))
        cctx->canames = sk_X509_NAME_new_null();
    if (cctx->canames == ((void*)0))
        return 0;
    return SSL_add_store_cert_subjects_to_stack(cctx->canames, value);
}
