
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptext_ex ;
typedef int RSA ;


 int RSA_PKCS1_PADDING ;
 int RSA_free (int *) ;
 int RSA_private_decrypt (int,unsigned char*,unsigned char*,int *,int ) ;
 int RSA_public_encrypt (int,unsigned char*,unsigned char*,int *,int ) ;
 int TEST_int_eq (int,int) ;
 int TEST_mem_eq (unsigned char*,int,unsigned char*,int) ;
 int rsa_setkey (int **,unsigned char*,int) ;

__attribute__((used)) static int test_rsa_pkcs1(int idx)
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

    plen = sizeof(ptext_ex) - 1;
    clen = rsa_setkey(&key, ctext_ex, idx);

    num = RSA_public_encrypt(plen, ptext_ex, ctext, key,
                             RSA_PKCS1_PADDING);
    if (!TEST_int_eq(num, clen))
        goto err;

    num = RSA_private_decrypt(num, ctext, ptext, key, RSA_PKCS1_PADDING);
    if (!TEST_mem_eq(ptext, num, ptext_ex, plen))
        goto err;

    ret = 1;
err:
    RSA_free(key);
    return ret;
}
