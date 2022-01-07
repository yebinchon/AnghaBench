
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {scalar_t__ adinlen; int adin; scalar_t__ exlen; scalar_t__ perslen; int pers; int flags; int nid; } ;
struct TYPE_20__ {unsigned int reseed_gen_counter; unsigned int reseed_interval; int data; scalar_t__ min_entropylen; scalar_t__ max_entropylen; scalar_t__ max_adinlen; scalar_t__ max_request; scalar_t__ max_noncelen; scalar_t__ min_noncelen; scalar_t__ max_perslen; } ;
struct TYPE_19__ {unsigned int entropycnt; scalar_t__ entropylen; scalar_t__ noncelen; } ;
typedef TYPE_1__ TEST_CTX ;
typedef TYPE_2__ RAND_DRBG ;
typedef TYPE_3__ DRBG_SELFTEST_DATA ;


 int RAND_DRBG_free (TYPE_2__*) ;
 int RAND_DRBG_generate (TYPE_2__*,unsigned char*,scalar_t__,int,int ,scalar_t__) ;
 scalar_t__ RAND_DRBG_instantiate (TYPE_2__*,int ,scalar_t__) ;
 TYPE_2__* RAND_DRBG_new (int ,int ,int *) ;
 scalar_t__ RAND_DRBG_reseed (TYPE_2__*,int ,scalar_t__,int ) ;
 scalar_t__ TEST_false (int ) ;
 int TEST_int_eq (unsigned int,unsigned int) ;
 scalar_t__ TEST_int_le (scalar_t__,int ) ;
 int TEST_mem_eq (char*,int,int *,int) ;
 int TEST_ptr (TYPE_2__*) ;
 int TEST_true (int ) ;
 int disable_crngt (TYPE_2__*) ;
 int init (TYPE_2__*,TYPE_3__*,TYPE_1__*) ;
 int instantiate (TYPE_2__*,TYPE_3__*,TYPE_1__*) ;
 int uninstantiate (TYPE_2__*) ;

__attribute__((used)) static int error_check(DRBG_SELFTEST_DATA *td)
{
    static char zero[sizeof(RAND_DRBG)];
    RAND_DRBG *drbg = ((void*)0);
    TEST_CTX t;
    unsigned char buff[1024];
    unsigned int reseed_counter_tmp;
    int ret = 0;

    if (!TEST_ptr(drbg = RAND_DRBG_new(td->nid, td->flags, ((void*)0)))
        || !TEST_true(disable_crngt(drbg)))
        goto err;






    if (!init(drbg, td, &t)
            || RAND_DRBG_instantiate(drbg, td->pers, drbg->max_perslen + 1) > 0)
        goto err;






    t.entropylen = 0;
    if (TEST_int_le(RAND_DRBG_instantiate(drbg, td->pers, td->perslen), 0))
        goto err;


    if (!TEST_false(RAND_DRBG_generate(drbg, buff, td->exlen, 0,
                                       td->adin, td->adinlen))
            || !uninstantiate(drbg))
        goto err;


    t.entropylen = drbg->min_entropylen - 1;
    if (!init(drbg, td, &t)
            || RAND_DRBG_instantiate(drbg, td->pers, td->perslen) > 0
            || !uninstantiate(drbg))
        goto err;


    t.entropylen = drbg->max_entropylen + 1;
    if (!init(drbg, td, &t)
            || RAND_DRBG_instantiate(drbg, td->pers, td->perslen) > 0
            || !uninstantiate(drbg))
        goto err;






    if (drbg->min_noncelen) {
        t.noncelen = drbg->min_noncelen - 1;
        if (!init(drbg, td, &t)
                || RAND_DRBG_instantiate(drbg, td->pers, td->perslen) > 0
                || !uninstantiate(drbg))
            goto err;
    }


    if (drbg->max_noncelen) {
        t.noncelen = drbg->max_noncelen + 1;
        if (!init(drbg, td, &t)
                || RAND_DRBG_instantiate(drbg, td->pers, td->perslen) > 0
                || !uninstantiate(drbg))
            goto err;
    }


    if (!instantiate(drbg, td, &t)
            || !TEST_true(RAND_DRBG_generate(drbg, buff, td->exlen, 0,
                                             td->adin, td->adinlen)))
        goto err;


    if (!TEST_false(RAND_DRBG_generate(drbg, buff, drbg->max_request + 1, 0,
                                       td->adin, td->adinlen)))
        goto err;


    if (!TEST_false(RAND_DRBG_generate(drbg, buff, td->exlen, 0,
                                       td->adin, drbg->max_adinlen + 1)))
        goto err;





    t.entropylen = 0;
    if (TEST_false(RAND_DRBG_generate(drbg, buff, td->exlen, 1,
                                      td->adin, td->adinlen))
            || !uninstantiate(drbg))
        goto err;


    if (!instantiate(drbg, td, &t))
        goto err;
    reseed_counter_tmp = drbg->reseed_gen_counter;
    drbg->reseed_gen_counter = drbg->reseed_interval;


    t.entropycnt = 0;
    if (!TEST_true(RAND_DRBG_generate(drbg, buff, td->exlen, 0,
                                      td->adin, td->adinlen))
            || !TEST_int_eq(t.entropycnt, 1)
            || !TEST_int_eq(drbg->reseed_gen_counter, reseed_counter_tmp + 1)
            || !uninstantiate(drbg))
        goto err;





    t.entropylen = 0;
    if (!TEST_false(RAND_DRBG_generate(drbg, buff, td->exlen, 1,
                                       td->adin, td->adinlen))
            || !uninstantiate(drbg))
        goto err;


    if (!instantiate(drbg, td, &t))
        goto err;
    reseed_counter_tmp = drbg->reseed_gen_counter;
    drbg->reseed_gen_counter = drbg->reseed_interval;


    t.entropycnt = 0;
    if (!TEST_true(RAND_DRBG_generate(drbg, buff, td->exlen, 0,
                                      td->adin, td->adinlen))
            || !TEST_int_eq(t.entropycnt, 1)
            || !TEST_int_eq(drbg->reseed_gen_counter, reseed_counter_tmp + 1)
            || !uninstantiate(drbg))
        goto err;






    if (!instantiate(drbg, td, &t)
            || RAND_DRBG_reseed(drbg, td->adin, drbg->max_adinlen + 1, 0) > 0)
        goto err;


    t.entropylen = 0;
    if (!TEST_int_le(RAND_DRBG_reseed(drbg, td->adin, td->adinlen, 0), 0)
            || !uninstantiate(drbg))
        goto err;


    if (!instantiate(drbg, td, &t))
        goto err;
    t.entropylen = drbg->max_entropylen + 1;
    if (!TEST_int_le(RAND_DRBG_reseed(drbg, td->adin, td->adinlen, 0), 0)
            || !uninstantiate(drbg))
        goto err;


    if (!instantiate(drbg, td, &t))
        goto err;
    t.entropylen = drbg->min_entropylen - 1;
    if (!TEST_int_le(RAND_DRBG_reseed(drbg, td->adin, td->adinlen, 0), 0)
            || !uninstantiate(drbg))
        goto err;


    if (!TEST_mem_eq(zero, sizeof(drbg->data), &drbg->data, sizeof(drbg->data)))
        goto err;

    ret = 1;

err:
    uninstantiate(drbg);
    RAND_DRBG_free(drbg);
    return ret;
}
