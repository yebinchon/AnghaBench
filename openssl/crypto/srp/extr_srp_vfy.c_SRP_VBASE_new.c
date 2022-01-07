
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * gN_cache; int * users_pwd; int * seed_key; int * default_N; int * default_g; } ;
typedef TYPE_1__ SRP_VBASE ;


 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int * OPENSSL_strdup (char*) ;
 int sk_SRP_gN_cache_free (int *) ;
 int * sk_SRP_gN_cache_new_null () ;
 int sk_SRP_user_pwd_free (int *) ;
 int * sk_SRP_user_pwd_new_null () ;

SRP_VBASE *SRP_VBASE_new(char *seed_key)
{
    SRP_VBASE *vb = OPENSSL_malloc(sizeof(*vb));

    if (vb == ((void*)0))
        return ((void*)0);
    if ((vb->users_pwd = sk_SRP_user_pwd_new_null()) == ((void*)0)
        || (vb->gN_cache = sk_SRP_gN_cache_new_null()) == ((void*)0)) {
        OPENSSL_free(vb);
        return ((void*)0);
    }
    vb->default_g = ((void*)0);
    vb->default_N = ((void*)0);
    vb->seed_key = ((void*)0);
    if ((seed_key != ((void*)0)) && (vb->seed_key = OPENSSL_strdup(seed_key)) == ((void*)0)) {
        sk_SRP_user_pwd_free(vb->users_pwd);
        sk_SRP_gN_cache_free(vb->gN_cache);
        OPENSSL_free(vb);
        return ((void*)0);
    }
    return vb;
}
