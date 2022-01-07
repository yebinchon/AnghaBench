
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int v; int s; int info; int id; int N; int g; } ;
typedef TYPE_1__ SRP_user_pwd ;


 int BN_dup (int ) ;
 int SRP_user_pwd_free (TYPE_1__*) ;
 TYPE_1__* SRP_user_pwd_new () ;
 int SRP_user_pwd_set0_sv (TYPE_1__*,int ,int ) ;
 int SRP_user_pwd_set1_ids (TYPE_1__*,int ,int ) ;
 int SRP_user_pwd_set_gN (TYPE_1__*,int ,int ) ;

__attribute__((used)) static SRP_user_pwd *srp_user_pwd_dup(SRP_user_pwd *src)
{
    SRP_user_pwd *ret;

    if (src == ((void*)0))
        return ((void*)0);
    if ((ret = SRP_user_pwd_new()) == ((void*)0))
        return ((void*)0);

    SRP_user_pwd_set_gN(ret, src->g, src->N);
    if (!SRP_user_pwd_set1_ids(ret, src->id, src->info)
        || !SRP_user_pwd_set0_sv(ret, BN_dup(src->s), BN_dup(src->v))) {
            SRP_user_pwd_free(ret);
            return ((void*)0);
    }
    return ret;
}
