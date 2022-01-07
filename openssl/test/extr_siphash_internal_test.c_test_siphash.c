
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int key ;
typedef int in ;
struct TYPE_11__ {int member_0; } ;
struct TYPE_9__ {unsigned char* data; size_t size; } ;
struct TYPE_10__ {size_t idx; TYPE_1__ expected; } ;
typedef TYPE_2__ TESTDATA ;
typedef TYPE_3__ SIPHASH ;


 int SIPHASH_KEY_SIZE ;
 int SIPHASH_MAX_DIGEST_SIZE ;
 size_t SIPHASH_MIN_DIGEST_SIZE ;
 int SipHash_Final (TYPE_3__*,unsigned char*,size_t) ;
 int SipHash_Init (TYPE_3__*,unsigned char*,int ,int ) ;
 int SipHash_Update (TYPE_3__*,unsigned char*,size_t) ;
 int SipHash_set_hash_size (TYPE_3__*,size_t) ;
 int TEST_info (char*,int,...) ;
 int TEST_int_le (size_t,int) ;
 int TEST_mem_eq (unsigned char*,size_t,unsigned char*,size_t) ;
 int TEST_true (int ) ;
 TYPE_2__* tests ;

__attribute__((used)) static int test_siphash(int idx)
{
    SIPHASH siphash = { 0, };
    TESTDATA test = tests[idx];
    unsigned char key[SIPHASH_KEY_SIZE];
    unsigned char in[64];
    size_t inlen = test.idx;
    unsigned char *expected = test.expected.data;
    size_t expectedlen = test.expected.size;
    unsigned char out[SIPHASH_MAX_DIGEST_SIZE];
    size_t i;

    if (expectedlen != SIPHASH_MIN_DIGEST_SIZE &&
        expectedlen != SIPHASH_MAX_DIGEST_SIZE) {
        TEST_info("size %zu vs %d and %d", expectedlen,
                  SIPHASH_MIN_DIGEST_SIZE, SIPHASH_MAX_DIGEST_SIZE);
        return 0;
    }

    if (!TEST_int_le(inlen, sizeof(in)))
        return 0;


    for (i = 0; i < sizeof(key); i++)
        key[i] = (unsigned char)i;

    for (i = 0; i < inlen; i++)
        in[i] = (unsigned char)i;

    if (!TEST_true(SipHash_set_hash_size(&siphash, expectedlen))
        || !TEST_true(SipHash_Init(&siphash, key, 0, 0)))
        return 0;
    SipHash_Update(&siphash, in, inlen);
    if (!TEST_true(SipHash_Final(&siphash, out, expectedlen))
        || !TEST_mem_eq(out, expectedlen, expected, expectedlen))
        return 0;

    if (inlen > 16) {
        if (!TEST_true(SipHash_set_hash_size(&siphash, expectedlen))
            || !TEST_true(SipHash_Init(&siphash, key, 0, 0)))
            return 0;
        SipHash_Update(&siphash, in, 1);
        SipHash_Update(&siphash, in+1, inlen-1);
        if (!TEST_true(SipHash_Final(&siphash, out, expectedlen)))
            return 0;

        if (!TEST_mem_eq(out, expectedlen, expected, expectedlen)) {
            TEST_info("SipHash test #%d/1+(N-1) failed.", idx);
            return 0;
        }
    }

    if (inlen > 32) {
        size_t half = inlen / 2;

        if (!TEST_true(SipHash_set_hash_size(&siphash, expectedlen))
            || !TEST_true(SipHash_Init(&siphash, key, 0, 0)))
            return 0;
        SipHash_Update(&siphash, in, half);
        SipHash_Update(&siphash, in+half, inlen-half);
        if (!TEST_true(SipHash_Final(&siphash, out, expectedlen)))
            return 0;

        if (!TEST_mem_eq(out, expectedlen, expected, expectedlen)) {
            TEST_info("SipHash test #%d/2 failed.", idx);
            return 0;
        }

        for (half = 16; half < inlen; half += 16) {
            if (!TEST_true(SipHash_set_hash_size(&siphash, expectedlen))
                || !TEST_true(SipHash_Init(&siphash, key, 0, 0)))
                return 0;
            SipHash_Update(&siphash, in, half);
            SipHash_Update(&siphash, in+half, inlen-half);
            if (!TEST_true(SipHash_Final(&siphash, out, expectedlen)))
                return 0;

            if (!TEST_mem_eq(out, expectedlen, expected, expectedlen)) {
                TEST_info("SipHash test #%d/%zu+%zu failed.",
                          idx, half, inlen-half);
                return 0;
            }
        }
    }

    return 1;
}
