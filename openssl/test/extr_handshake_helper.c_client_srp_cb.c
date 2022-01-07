
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srp_password; } ;
typedef int SSL ;
typedef TYPE_1__ CTX_DATA ;


 char* OPENSSL_strdup (int ) ;

__attribute__((used)) static char *client_srp_cb(SSL *s, void *arg)
{
    CTX_DATA *ctx_data = (CTX_DATA*)(arg);
    return OPENSSL_strdup(ctx_data->srp_password);
}
