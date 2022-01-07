
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int secure; scalar_t__ strength; int reseed_time_interval; int reseed_interval; void* cleanup_entropy; void* get_entropy; int cleanup_nonce; int get_nonce; struct TYPE_11__* parent; int fork_id; int * libctx; } ;
typedef TYPE_1__ RAND_DRBG ;
typedef int OPENSSL_CTX ;


 scalar_t__ CRYPTO_secure_allocated (TYPE_1__*) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_1__* OPENSSL_secure_zalloc (int) ;
 TYPE_1__* OPENSSL_zalloc (int) ;
 int RAND_DRBG_free (TYPE_1__*) ;
 scalar_t__ RAND_DRBG_set (TYPE_1__*,int,unsigned int) ;
 int RAND_F_RAND_DRBG_NEW ;
 int RAND_R_PARENT_STRENGTH_TOO_WEAK ;
 int RANDerr (int ,int ) ;
 int master_reseed_interval ;
 int master_reseed_time_interval ;
 int openssl_get_fork_id () ;
 void* rand_crngt_cleanup_entropy ;
 void* rand_crngt_get_entropy ;
 void* rand_drbg_cleanup_entropy ;
 int rand_drbg_cleanup_nonce ;
 void* rand_drbg_get_entropy ;
 int rand_drbg_get_nonce ;
 int rand_drbg_lock (TYPE_1__*) ;
 int rand_drbg_unlock (TYPE_1__*) ;
 int slave_reseed_interval ;
 int slave_reseed_time_interval ;

__attribute__((used)) static RAND_DRBG *rand_drbg_new(OPENSSL_CTX *ctx,
                                int secure,
                                int type,
                                unsigned int flags,
                                RAND_DRBG *parent)
{
    RAND_DRBG *drbg = secure ? OPENSSL_secure_zalloc(sizeof(*drbg))
                             : OPENSSL_zalloc(sizeof(*drbg));

    if (drbg == ((void*)0)) {
        RANDerr(RAND_F_RAND_DRBG_NEW, ERR_R_MALLOC_FAILURE);
        return ((void*)0);
    }

    drbg->libctx = ctx;
    drbg->secure = secure && CRYPTO_secure_allocated(drbg);
    drbg->fork_id = openssl_get_fork_id();
    drbg->parent = parent;

    if (parent == ((void*)0)) {




        drbg->get_entropy = rand_drbg_get_entropy;
        drbg->cleanup_entropy = rand_drbg_cleanup_entropy;


        drbg->get_nonce = rand_drbg_get_nonce;
        drbg->cleanup_nonce = rand_drbg_cleanup_nonce;


        drbg->reseed_interval = master_reseed_interval;
        drbg->reseed_time_interval = master_reseed_time_interval;
    } else {
        drbg->get_entropy = rand_drbg_get_entropy;
        drbg->cleanup_entropy = rand_drbg_cleanup_entropy;





        drbg->reseed_interval = slave_reseed_interval;
        drbg->reseed_time_interval = slave_reseed_time_interval;
    }

    if (RAND_DRBG_set(drbg, type, flags) == 0)
        goto err;

    if (parent != ((void*)0)) {
        rand_drbg_lock(parent);
        if (drbg->strength > parent->strength) {




            rand_drbg_unlock(parent);
            RANDerr(RAND_F_RAND_DRBG_NEW, RAND_R_PARENT_STRENGTH_TOO_WEAK);
            goto err;
        }
        rand_drbg_unlock(parent);
    }

    return drbg;

 err:
    RAND_DRBG_free(drbg);

    return ((void*)0);
}
