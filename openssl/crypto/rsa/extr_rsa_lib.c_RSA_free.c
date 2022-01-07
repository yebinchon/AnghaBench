
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {struct TYPE_9__* bignum_data; int mt_blinding; int blinding; int prime_infos; int pss; int iqmp; int dmq1; int dmp1; int q; int p; int d; int e; int n; int lock; int ex_data; int engine; TYPE_1__* meth; int references; } ;
struct TYPE_8__ {int (* finish ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RSA ;


 int BN_BLINDING_free (int ) ;
 int BN_clear_free (int ) ;
 int BN_free (int ) ;
 int CRYPTO_DOWN_REF (int *,int*,int ) ;
 int CRYPTO_EX_INDEX_RSA ;
 int CRYPTO_THREAD_lock_free (int ) ;
 int CRYPTO_free_ex_data (int ,TYPE_2__*,int *) ;
 int ENGINE_finish (int ) ;
 int OPENSSL_free (TYPE_2__*) ;
 int REF_ASSERT_ISNT (int) ;
 int REF_PRINT_COUNT (char*,TYPE_2__*) ;
 int RSA_PSS_PARAMS_free (int ) ;
 int rsa_multip_info_free ;
 int sk_RSA_PRIME_INFO_pop_free (int ,int ) ;
 int stub1 (TYPE_2__*) ;

void RSA_free(RSA *r)
{
    int i;

    if (r == ((void*)0))
        return;

    CRYPTO_DOWN_REF(&r->references, &i, r->lock);
    REF_PRINT_COUNT("RSA", r);
    if (i > 0)
        return;
    REF_ASSERT_ISNT(i < 0);

    if (r->meth != ((void*)0) && r->meth->finish != ((void*)0))
        r->meth->finish(r);

    ENGINE_finish(r->engine);


    CRYPTO_free_ex_data(CRYPTO_EX_INDEX_RSA, r, &r->ex_data);

    CRYPTO_THREAD_lock_free(r->lock);

    BN_free(r->n);
    BN_free(r->e);
    BN_clear_free(r->d);
    BN_clear_free(r->p);
    BN_clear_free(r->q);
    BN_clear_free(r->dmp1);
    BN_clear_free(r->dmq1);
    BN_clear_free(r->iqmp);
    RSA_PSS_PARAMS_free(r->pss);
    sk_RSA_PRIME_INFO_pop_free(r->prime_infos, rsa_multip_info_free);
    BN_BLINDING_free(r->blinding);
    BN_BLINDING_free(r->mt_blinding);
    OPENSSL_free(r->bignum_data);
    OPENSSL_free(r);
}
