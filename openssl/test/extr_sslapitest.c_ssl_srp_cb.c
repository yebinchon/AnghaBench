
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int info; int v; int s; int g; int N; } ;
typedef int SSL ;
typedef TYPE_1__ SRP_user_pwd ;


 TYPE_1__* SRP_VBASE_get1_by_user (int ,char*) ;
 int SRP_user_pwd_free (TYPE_1__*) ;
 int SSL3_AL_FATAL ;
 int SSL_AD_INTERNAL_ERROR ;
 char* SSL_get_srp_username (int *) ;
 scalar_t__ SSL_set_srp_server_param (int *,int ,int ,int ,int ,int ) ;
 int vbase ;

__attribute__((used)) static int ssl_srp_cb(SSL *s, int *ad, void *arg)
{
    int ret = SSL3_AL_FATAL;
    char *username;
    SRP_user_pwd *user = ((void*)0);

    username = SSL_get_srp_username(s);
    if (username == ((void*)0)) {
        *ad = SSL_AD_INTERNAL_ERROR;
        goto err;
    }

    user = SRP_VBASE_get1_by_user(vbase, username);
    if (user == ((void*)0)) {
        *ad = SSL_AD_INTERNAL_ERROR;
        goto err;
    }

    if (SSL_set_srp_server_param(s, user->N, user->g, user->s, user->v,
                                 user->info) <= 0) {
        *ad = SSL_AD_INTERNAL_ERROR;
        goto err;
    }

    ret = 0;

 err:
    SRP_user_pwd_free(user);
    return ret;
}
