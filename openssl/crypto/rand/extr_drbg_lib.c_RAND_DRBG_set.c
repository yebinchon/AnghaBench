
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int type; unsigned int flags; int state; TYPE_1__* meth; int * adin_pool; } ;
struct TYPE_8__ {int (* uninstantiate ) (TYPE_2__*) ;} ;
typedef TYPE_2__ RAND_DRBG ;


 int DRBG_ERROR ;
 int DRBG_UNINITIALISED ;
 unsigned int RAND_DRBG_FLAG_HMAC ;
 size_t RAND_DRBG_TYPE_MASTER ;
 int RAND_F_RAND_DRBG_SET ;
 int RAND_R_ERROR_INITIALISING_DRBG ;
 int RAND_R_UNSUPPORTED_DRBG_TYPE ;
 int RANDerr (int ,int ) ;
 int drbg_ctr_init (TYPE_2__*) ;
 int drbg_hash_init (TYPE_2__*) ;
 int drbg_hmac_init (TYPE_2__*) ;
 scalar_t__ is_ctr (int) ;
 scalar_t__ is_digest (int) ;
 unsigned int* rand_drbg_flags ;
 int* rand_drbg_type ;
 int rand_pool_free (int *) ;
 int stub1 (TYPE_2__*) ;

int RAND_DRBG_set(RAND_DRBG *drbg, int type, unsigned int flags)
{
    int ret = 1;

    if (type == 0 && flags == 0) {
        type = rand_drbg_type[RAND_DRBG_TYPE_MASTER];
        flags = rand_drbg_flags[RAND_DRBG_TYPE_MASTER];
    }


    if (drbg->type != 0 && (type != drbg->type || flags != drbg->flags)) {
        drbg->meth->uninstantiate(drbg);
        rand_pool_free(drbg->adin_pool);
        drbg->adin_pool = ((void*)0);
    }

    drbg->state = DRBG_UNINITIALISED;
    drbg->flags = flags;
    drbg->type = type;

    if (type == 0) {

        drbg->meth = ((void*)0);
        return 1;
    } else if (is_ctr(type)) {
        ret = drbg_ctr_init(drbg);
    } else if (is_digest(type)) {
        if (flags & RAND_DRBG_FLAG_HMAC)
            ret = drbg_hmac_init(drbg);
        else
            ret = drbg_hash_init(drbg);
    } else {
        drbg->type = 0;
        drbg->flags = 0;
        drbg->meth = ((void*)0);
        RANDerr(RAND_F_RAND_DRBG_SET, RAND_R_UNSUPPORTED_DRBG_TYPE);
        return 0;
    }

    if (ret == 0) {
        drbg->state = DRBG_ERROR;
        RANDerr(RAND_F_RAND_DRBG_SET, RAND_R_ERROR_INITIALISING_DRBG);
    }
    return ret;
}
