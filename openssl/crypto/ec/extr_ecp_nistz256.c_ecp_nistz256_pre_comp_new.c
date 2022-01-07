
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int w; int references; int * lock; int const* group; } ;
typedef TYPE_1__ NISTZ256_PRE_COMP ;
typedef int EC_GROUP ;


 int * CRYPTO_THREAD_lock_new () ;
 int EC_F_ECP_NISTZ256_PRE_COMP_NEW ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static NISTZ256_PRE_COMP *ecp_nistz256_pre_comp_new(const EC_GROUP *group)
{
    NISTZ256_PRE_COMP *ret = ((void*)0);

    if (!group)
        return ((void*)0);

    ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        ECerr(EC_F_ECP_NISTZ256_PRE_COMP_NEW, ERR_R_MALLOC_FAILURE);
        return ret;
    }

    ret->group = group;
    ret->w = 6;
    ret->references = 1;

    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        ECerr(EC_F_ECP_NISTZ256_PRE_COMP_NEW, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }
    return ret;
}
