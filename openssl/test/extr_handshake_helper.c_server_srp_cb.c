
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srp_password; int srp_user; } ;
typedef int SSL ;
typedef TYPE_1__ CTX_DATA ;


 int SSL3_AL_FATAL ;
 int SSL_AD_INTERNAL_ERROR ;
 int SSL_ERROR_NONE ;
 int SSL_get_srp_username (int *) ;
 scalar_t__ SSL_set_srp_server_param_pw (int *,int ,int ,char*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int server_srp_cb(SSL *s, int *ad, void *arg)
{
    CTX_DATA *ctx_data = (CTX_DATA*)(arg);
    if (strcmp(ctx_data->srp_user, SSL_get_srp_username(s)) != 0)
        return SSL3_AL_FATAL;
    if (SSL_set_srp_server_param_pw(s, ctx_data->srp_user,
                                    ctx_data->srp_password,
                                    "2048" ) < 0) {
        *ad = SSL_AD_INTERNAL_ERROR;
        return SSL3_AL_FATAL;
    }
    return SSL_ERROR_NONE;
}
