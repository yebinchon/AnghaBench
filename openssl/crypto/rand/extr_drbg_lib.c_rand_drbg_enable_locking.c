
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; int * lock; TYPE_1__* parent; } ;
struct TYPE_4__ {int * lock; } ;
typedef TYPE_2__ RAND_DRBG ;


 int * CRYPTO_THREAD_lock_new () ;
 scalar_t__ DRBG_UNINITIALISED ;
 int RAND_F_RAND_DRBG_ENABLE_LOCKING ;
 int RAND_R_DRBG_ALREADY_INITIALIZED ;
 int RAND_R_FAILED_TO_CREATE_LOCK ;
 int RAND_R_PARENT_LOCKING_NOT_ENABLED ;
 int RANDerr (int ,int ) ;

int rand_drbg_enable_locking(RAND_DRBG *drbg)
{
    if (drbg->state != DRBG_UNINITIALISED) {
        RANDerr(RAND_F_RAND_DRBG_ENABLE_LOCKING,
                RAND_R_DRBG_ALREADY_INITIALIZED);
        return 0;
    }

    if (drbg->lock == ((void*)0)) {
        if (drbg->parent != ((void*)0) && drbg->parent->lock == ((void*)0)) {
            RANDerr(RAND_F_RAND_DRBG_ENABLE_LOCKING,
                    RAND_R_PARENT_LOCKING_NOT_ENABLED);
            return 0;
        }

        drbg->lock = CRYPTO_THREAD_lock_new();
        if (drbg->lock == ((void*)0)) {
            RANDerr(RAND_F_RAND_DRBG_ENABLE_LOCKING,
                    RAND_R_FAILED_TO_CREATE_LOCK);
            return 0;
        }
    }

    return 1;
}
