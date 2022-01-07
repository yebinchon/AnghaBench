
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* seed_key; int gN_cache; int users_pwd; } ;
typedef TYPE_1__ SRP_VBASE ;


 int OPENSSL_free (TYPE_1__*) ;
 int SRP_user_pwd_free ;
 int sk_SRP_gN_cache_free (int ) ;
 int sk_SRP_user_pwd_pop_free (int ,int ) ;

void SRP_VBASE_free(SRP_VBASE *vb)
{
    if (!vb)
        return;
    sk_SRP_user_pwd_pop_free(vb->users_pwd, SRP_user_pwd_free);
    sk_SRP_gN_cache_free(vb->gN_cache);
    OPENSSL_free(vb->seed_key);
    OPENSSL_free(vb);
}
