
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ SIPHASH ;


 int SIPHASH_KEY_SIZE ;
 int SIPHASH_MAX_DIGEST_SIZE ;
 int SipHash_Final (TYPE_1__*,unsigned char*,int) ;
 int SipHash_Init (TYPE_1__*,unsigned char*,int ,int ) ;
 int SipHash_set_hash_size (TYPE_1__*,int) ;
 scalar_t__ TEST_int_eq (int ,int ) ;
 scalar_t__ TEST_true (int ) ;

__attribute__((used)) static int test_siphash_basic(void)
{
    SIPHASH siphash = { 0, };
    unsigned char key[SIPHASH_KEY_SIZE];
    unsigned char output[SIPHASH_MAX_DIGEST_SIZE];


    return TEST_int_eq(SipHash_set_hash_size(&siphash, 4), 0)

           && TEST_true(SipHash_set_hash_size(&siphash, 8))
           && TEST_true(SipHash_Init(&siphash, key, 0, 0))
           && TEST_true(SipHash_Final(&siphash, output, 8))
           && TEST_int_eq(SipHash_Final(&siphash, output, 16), 0)


           && TEST_true(SipHash_set_hash_size(&siphash, 16))
           && TEST_true(SipHash_Init(&siphash, key, 0, 0))
           && TEST_int_eq(SipHash_Final(&siphash, output, 8), 0)
           && TEST_true(SipHash_Final(&siphash, output, 16))


           && TEST_true(SipHash_set_hash_size(&siphash, 0))
           && TEST_true(SipHash_Init(&siphash, key, 0, 0))
           && TEST_int_eq(SipHash_Final(&siphash, output, 8), 0)
           && TEST_true(SipHash_Final(&siphash, output, 16));
}
