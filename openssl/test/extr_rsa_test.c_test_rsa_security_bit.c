
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int num ;
struct TYPE_2__ {int bits; int r; } ;
typedef int RSA ;


 int BN_bin2bn (unsigned char*,int const,int *) ;
 int RSA_free (int *) ;
 int * RSA_new () ;
 int RSA_security_bits (int *) ;
 int RSA_set0_key (int *,int ,int ,int *) ;
 int TEST_int_le (int const,int) ;
 int TEST_ptr (int *) ;
 scalar_t__ TEST_true (int ) ;
 scalar_t__ TEST_uint_eq (int ,int const) ;
 int memset (unsigned char*,unsigned char const,int const) ;
 TYPE_1__* rsa_security_bits_cases ;

__attribute__((used)) static int test_rsa_security_bit(int n)
{
    static const unsigned char vals[8] = {
        0x80, 0x01, 0x02, 0x04, 0x08, 0x10, 0x20, 0x40
    };
    RSA *key = RSA_new();
    const int bits = rsa_security_bits_cases[n].bits;
    const int result = rsa_security_bits_cases[n].r;
    const int bytes = (bits + 7) / 8;
    int r = 0;
    unsigned char num[2000];

    if (!TEST_ptr(key) || !TEST_int_le(bytes, (int)sizeof(num)))
        goto err;







    memset(num, vals[bits % 8], bytes);






    if (TEST_true(RSA_set0_key(key, BN_bin2bn(num, bytes, ((void*)0)),
                               BN_bin2bn(num, bytes, ((void*)0)), ((void*)0)))
            && TEST_uint_eq(RSA_security_bits(key), result))
        r = 1;
err:
    RSA_free(key);
    return r;
}
