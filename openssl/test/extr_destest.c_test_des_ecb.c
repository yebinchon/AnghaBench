
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DES_key_schedule ;
typedef int DES_cblock ;


 int DATA_BUF_SIZE ;
 int DES_DECRYPT ;
 int DES_ENCRYPT ;
 int DES_ecb_encrypt (int *,int *,int *,int ) ;
 int DES_set_key_unchecked (int *,int *) ;
 int TEST_info (char*,int,int ,int ) ;
 int TEST_mem_eq (int ,int,int ,int) ;
 int * cipher_data ;
 int * key_data ;
 int memcpy (int ,int ,int) ;
 int memset (int ,int ,int) ;
 int * plain_data ;
 int pt (int ,char*) ;

__attribute__((used)) static int test_des_ecb(int i)
{
    DES_key_schedule ks;
    DES_cblock in, out, outin;
    char b1[DATA_BUF_SIZE], b2[DATA_BUF_SIZE];

    DES_set_key_unchecked(&key_data[i], &ks);
    memcpy(in, plain_data[i], 8);
    memset(out, 0, 8);
    memset(outin, 0, 8);
    DES_ecb_encrypt(&in, &out, &ks, DES_ENCRYPT);
    DES_ecb_encrypt(&out, &outin, &ks, DES_DECRYPT);

    if (!TEST_mem_eq(out, 8, cipher_data[i], 8)) {
        TEST_info("Encryption error %2d k=%s p=%s", i + 1,
                  pt(key_data[i], b1), pt(in, b2));
        return 0;
    }
    if (!TEST_mem_eq(in, 8, outin, 8)) {
        TEST_info("Decryption error %2d k=%s p=%s", i + 1,
                  pt(key_data[i], b1), pt(out, b2));
        return 0;
    }
    return 1;
}
