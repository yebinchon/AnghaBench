
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char DH ;
typedef int BIGNUM ;


 int DH_CHECK_P_NOT_PRIME ;
 int DH_CHECK_P_NOT_SAFE_PRIME ;
 int DH_NOT_SUITABLE_GENERATOR ;
 int DH_UNABLE_TO_CHECK_GENERATOR ;
 int DH_check (unsigned char*,int*) ;
 int DH_compute_key (unsigned char*,int const*,unsigned char*) ;
 int DH_free (unsigned char*) ;
 int DH_generate_key (unsigned char*) ;
 int DH_get0_key (unsigned char*,int const**,int *) ;
 unsigned char* DH_new_by_nid (int ) ;
 int DH_size (unsigned char*) ;
 int NID_ffdhe2048 ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (int) ;
 int TEST_false (int) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char*,int) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_true (int) ;

__attribute__((used)) static int rfc7919_test(void)
{
    DH *a = ((void*)0), *b = ((void*)0);
    const BIGNUM *apub_key = ((void*)0), *bpub_key = ((void*)0);
    unsigned char *abuf = ((void*)0);
    unsigned char *bbuf = ((void*)0);
    int i, alen, blen, aout, bout;
    int ret = 0;

    if (!TEST_ptr(a = DH_new_by_nid(NID_ffdhe2048)))
         goto err;

    if (!DH_check(a, &i))
        goto err;
    if (!TEST_false(i & DH_CHECK_P_NOT_PRIME)
            || !TEST_false(i & DH_CHECK_P_NOT_SAFE_PRIME)
            || !TEST_false(i & DH_UNABLE_TO_CHECK_GENERATOR)
            || !TEST_false(i & DH_NOT_SUITABLE_GENERATOR)
            || !TEST_false(i))
        goto err;

    if (!DH_generate_key(a))
        goto err;
    DH_get0_key(a, &apub_key, ((void*)0));


    if (!TEST_ptr(b = DH_new_by_nid(NID_ffdhe2048)))
        goto err;

    if (!DH_generate_key(b))
        goto err;
    DH_get0_key(b, &bpub_key, ((void*)0));

    alen = DH_size(a);
    if (!TEST_ptr(abuf = OPENSSL_malloc(alen))
            || !TEST_true((aout = DH_compute_key(abuf, bpub_key, a)) != -1))
        goto err;

    blen = DH_size(b);
    if (!TEST_ptr(bbuf = OPENSSL_malloc(blen))
            || !TEST_true((bout = DH_compute_key(bbuf, apub_key, b)) != -1))
        goto err;

    if (!TEST_true(aout >= 20)
            || !TEST_mem_eq(abuf, aout, bbuf, bout))
        goto err;

    ret = 1;

 err:
    OPENSSL_free(abuf);
    OPENSSL_free(bbuf);
    DH_free(a);
    DH_free(b);
    return ret;
}
