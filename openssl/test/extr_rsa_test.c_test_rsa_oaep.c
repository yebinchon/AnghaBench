
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptext_ex ;
typedef int RSA ;


 int RSA_PKCS1_OAEP_PADDING ;
 int RSA_free (int *) ;
 int RSA_private_decrypt (int,unsigned char*,unsigned char*,int *,int ) ;
 int RSA_public_encrypt (int,unsigned char*,unsigned char*,int *,int ) ;
 int TEST_info (char*) ;
 int TEST_int_eq (int,int) ;
 int TEST_int_le (int,int ) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char*,int) ;
 scalar_t__ pad_unknown () ;
 int rsa_setkey (int **,unsigned char*,int) ;

__attribute__((used)) static int test_rsa_oaep(int idx)
{
    int ret = 0;
    RSA *key;
    unsigned char ptext[256];
    unsigned char ctext[256];
    static unsigned char ptext_ex[] = "\x54\x85\x9b\x34\x2c\x49\xea\x2a";
    unsigned char ctext_ex[256];
    int plen;
    int clen = 0;
    int num;
    int n;

    plen = sizeof(ptext_ex) - 1;
    clen = rsa_setkey(&key, ctext_ex, idx);

    num = RSA_public_encrypt(plen, ptext_ex, ctext, key,
                             RSA_PKCS1_OAEP_PADDING);
    if (num == -1 && pad_unknown()) {
        TEST_info("Skipping: No OAEP support");
        ret = 1;
        goto err;
    }
    if (!TEST_int_eq(num, clen))
        goto err;

    num = RSA_private_decrypt(num, ctext, ptext, key,
                              RSA_PKCS1_OAEP_PADDING);
    if (!TEST_mem_eq(ptext, num, ptext_ex, plen))
        goto err;


    num = RSA_private_decrypt(clen, ctext_ex, ptext, key,
                              RSA_PKCS1_OAEP_PADDING);
    if (!TEST_mem_eq(ptext, num, ptext_ex, plen))
        goto err;


    for (n = 0; n < clen; ++n) {
        ctext[n] ^= 1;
        num = RSA_private_decrypt(clen, ctext, ptext, key,
                                      RSA_PKCS1_OAEP_PADDING);
        if (!TEST_int_le(num, 0))
            goto err;
        ctext[n] ^= 1;
    }


    for (n = -1; n < clen; ++n) {
        num = RSA_private_decrypt(n, ctext, ptext, key,
                                  RSA_PKCS1_OAEP_PADDING);
        if (!TEST_int_le(num, 0))
            goto err;
    }

    ret = 1;
err:
    RSA_free(key);
    return ret;
}
