
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int references; int * lock; } ;
typedef TYPE_1__ NISTP256_PRE_COMP ;


 int * CRYPTO_THREAD_lock_new () ;
 int EC_F_NISTP256_PRE_COMP_NEW ;
 int ECerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_zalloc (int) ;

__attribute__((used)) static NISTP256_PRE_COMP *nistp256_pre_comp_new(void)
{
    NISTP256_PRE_COMP *ret = OPENSSL_zalloc(sizeof(*ret));

    if (ret == ((void*)0)) {
        ECerr(EC_F_NISTP256_PRE_COMP_NEW, ERR_R_MALLOC_FAILURE);
        return ret;
    }

    ret->references = 1;

    ret->lock = CRYPTO_THREAD_lock_new();
    if (ret->lock == ((void*)0)) {
        ECerr(EC_F_NISTP256_PRE_COMP_NEW, ERR_R_MALLOC_FAILURE);
        OPENSSL_free(ret);
        return ((void*)0);
    }
    return ret;
}
