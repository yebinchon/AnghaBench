
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RAND_DRBG ;


 int NID_aes_192_ctr ;
 int NID_sha1 ;
 int NID_sha256 ;
 int RAND_DRBG_FLAG_HMAC ;
 int RAND_DRBG_free (int *) ;
 int RAND_DRBG_instantiate (int *,int *,int ) ;
 int * RAND_DRBG_new (int ,int ,int *) ;
 int RAND_DRBG_set (int *,int ,int ) ;
 int TEST_int_gt (int ,int ) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int disable_crngt (int *) ;
 int uninstantiate (int *) ;

__attribute__((used)) static int test_multi_set(void)
{
    int rv = 0;
    RAND_DRBG *drbg = ((void*)0);


    if (!TEST_ptr(drbg = RAND_DRBG_new(0, 0, ((void*)0)))
        || !TEST_true(disable_crngt(drbg)))
        goto err;

    if (!TEST_true(RAND_DRBG_set(drbg, NID_sha1, RAND_DRBG_FLAG_HMAC)))
        goto err;

    if (!TEST_true(RAND_DRBG_set(drbg, NID_sha1, RAND_DRBG_FLAG_HMAC)))
        goto err;

    if (!TEST_true(RAND_DRBG_set(drbg, NID_sha256, 0)))
        goto err;

    if (!TEST_true(RAND_DRBG_set(drbg, NID_sha256, 0)))
        goto err;

    if (!TEST_true(RAND_DRBG_set(drbg, NID_aes_192_ctr, 0)))
        goto err;

    if (!TEST_true(RAND_DRBG_set(drbg, NID_aes_192_ctr, 0)))
        goto err;
    if (!TEST_int_gt(RAND_DRBG_instantiate(drbg, ((void*)0), 0), 0))
        goto err;

    rv = 1;
err:
    uninstantiate(drbg);
    RAND_DRBG_free(drbg);
    return rv;
}
