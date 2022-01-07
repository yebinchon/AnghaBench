
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* info; struct TYPE_4__* id; int v; int s; } ;
typedef TYPE_1__ SRP_user_pwd ;


 int BN_clear_free (int ) ;
 int BN_free (int ) ;
 int OPENSSL_free (TYPE_1__*) ;

void SRP_user_pwd_free(SRP_user_pwd *user_pwd)
{
    if (user_pwd == ((void*)0))
        return;
    BN_free(user_pwd->s);
    BN_clear_free(user_pwd->v);
    OPENSSL_free(user_pwd->id);
    OPENSSL_free(user_pwd->info);
    OPENSSL_free(user_pwd);
}
