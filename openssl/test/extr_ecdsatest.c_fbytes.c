
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* bytes ) (unsigned char*,int) ;} ;
typedef int BIGNUM ;


 int BN_bn2binpad (int *,unsigned char*,int) ;
 int BN_free (int *) ;
 int BN_hex2bn (int **,int ) ;
 int * BN_new () ;
 int BN_num_bytes (int *) ;
 int OSSL_NELEM (int *) ;
 int TEST_int_le (int ,int) ;
 int TEST_int_lt (int,int) ;
 int TEST_ptr (int *) ;
 int TEST_true (int ) ;
 int * numbers ;
 TYPE_1__* old_rand ;
 int stub1 (unsigned char*,int) ;
 scalar_t__ use_fake ;

__attribute__((used)) static int fbytes(unsigned char *buf, int num)
{
    int ret = 0;
    static int fbytes_counter = 0;
    BIGNUM *tmp = ((void*)0);

    if (use_fake == 0)
        return old_rand->bytes(buf, num);

    use_fake = 0;

    if (!TEST_ptr(tmp = BN_new())
        || !TEST_int_lt(fbytes_counter, OSSL_NELEM(numbers))
        || !TEST_true(BN_hex2bn(&tmp, numbers[fbytes_counter]))

        || !TEST_int_le(BN_num_bytes(tmp), num)
        || !TEST_true(BN_bn2binpad(tmp, buf, num)))
        goto err;

    fbytes_counter = (fbytes_counter + 1) % OSSL_NELEM(numbers);
    ret = 1;
 err:
    BN_free(tmp);
    return ret;
}
