
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; } ;
typedef TYPE_1__ RAND_DRBG ;


 scalar_t__ DRBG_READY ;
 TYPE_1__* RAND_DRBG_get0_master () ;
 int rand_drbg_lock (TYPE_1__*) ;
 int rand_drbg_unlock (TYPE_1__*) ;

__attribute__((used)) static int drbg_status(void)
{
    int ret;
    RAND_DRBG *drbg = RAND_DRBG_get0_master();

    if (drbg == ((void*)0))
        return 0;

    rand_drbg_lock(drbg);
    ret = drbg->state == DRBG_READY ? 1 : 0;
    rand_drbg_unlock(drbg);
    return ret;
}
