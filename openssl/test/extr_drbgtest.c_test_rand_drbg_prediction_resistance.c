
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int buf2 ;
typedef int buf1 ;
struct TYPE_10__ {int reseed_prop_counter; } ;
typedef TYPE_1__ RAND_DRBG ;


 int RAND_DRBG_free (TYPE_1__*) ;
 int RAND_DRBG_generate (TYPE_1__*,unsigned char*,int,int,int *,int ) ;
 int RAND_DRBG_instantiate (TYPE_1__*,int *,int ) ;
 TYPE_1__* RAND_DRBG_new (int ,int ,TYPE_1__*) ;
 int RAND_DRBG_reseed (TYPE_1__*,int *,int ,int) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_gt (int,int) ;
 int TEST_mem_ne (unsigned char*,int,unsigned char*,int) ;
 int TEST_ptr (TYPE_1__*) ;
 int TEST_true (int ) ;
 int disable_crngt (TYPE_1__*) ;

__attribute__((used)) static int test_rand_drbg_prediction_resistance(void)
{
    RAND_DRBG *m = ((void*)0), *i = ((void*)0), *s = ((void*)0);
    unsigned char buf1[51], buf2[sizeof(buf1)];
    int ret = 0, mreseed, ireseed, sreseed;


    if (!TEST_ptr(m = RAND_DRBG_new(0, 0, ((void*)0)))
        || !TEST_true(disable_crngt(m))
        || !TEST_true(RAND_DRBG_instantiate(m, ((void*)0), 0))
        || !TEST_ptr(i = RAND_DRBG_new(0, 0, m))
        || !TEST_true(RAND_DRBG_instantiate(i, ((void*)0), 0))
        || !TEST_ptr(s = RAND_DRBG_new(0, 0, i))
        || !TEST_true(RAND_DRBG_instantiate(s, ((void*)0), 0)))
        goto err;


    mreseed = ++m->reseed_prop_counter;
    ireseed = ++i->reseed_prop_counter;
    sreseed = s->reseed_prop_counter;
    if (!TEST_true(RAND_DRBG_reseed(s, ((void*)0), 0, 0))
        || !TEST_int_eq(m->reseed_prop_counter, mreseed)
        || !TEST_int_eq(i->reseed_prop_counter, ireseed)
        || !TEST_int_gt(s->reseed_prop_counter, sreseed))
        goto err;





    sreseed = s->reseed_prop_counter;
    if (!TEST_true(RAND_DRBG_reseed(s, ((void*)0), 0, 1))
        || !TEST_int_gt(m->reseed_prop_counter, mreseed)
        || !TEST_int_gt(i->reseed_prop_counter, ireseed)
        || !TEST_int_gt(s->reseed_prop_counter, sreseed))
        goto err;


    mreseed = ++m->reseed_prop_counter;
    ireseed = ++i->reseed_prop_counter;
    sreseed = s->reseed_prop_counter;
    if (!TEST_true(RAND_DRBG_generate(s, buf1, sizeof(buf1), 0, ((void*)0), 0))
        || !TEST_int_eq(m->reseed_prop_counter, mreseed)
        || !TEST_int_eq(i->reseed_prop_counter, ireseed)
        || !TEST_int_gt(s->reseed_prop_counter, sreseed))
        goto err;





    sreseed = s->reseed_prop_counter;
    if (!TEST_true(RAND_DRBG_generate(s, buf2, sizeof(buf2), 1, ((void*)0), 0))
        || !TEST_int_gt(m->reseed_prop_counter, mreseed)
        || !TEST_int_gt(i->reseed_prop_counter, ireseed)
        || !TEST_int_gt(s->reseed_prop_counter, sreseed)
        || !TEST_mem_ne(buf1, sizeof(buf1), buf2, sizeof(buf2)))
        goto err;


    mreseed = ++m->reseed_prop_counter;
    ireseed = ++i->reseed_prop_counter;
    sreseed = s->reseed_prop_counter;
    if (!TEST_true(RAND_DRBG_reseed(s, ((void*)0), 0, 0))
        || !TEST_int_eq(m->reseed_prop_counter, mreseed)
        || !TEST_int_eq(i->reseed_prop_counter, ireseed)
        || !TEST_int_gt(s->reseed_prop_counter, sreseed))
        goto err;

    ret = 1;
err:
    RAND_DRBG_free(s);
    RAND_DRBG_free(i);
    RAND_DRBG_free(m);
    return ret;
}
