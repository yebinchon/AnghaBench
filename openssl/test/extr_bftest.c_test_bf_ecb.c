
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BF_KEY ;


 int BF_BLOCK ;
 int BF_DECRYPT ;
 int BF_ENCRYPT ;
 int BF_ecb_encrypt (unsigned char*,unsigned char*,int *,int ) ;
 int BF_set_key (int *,int,int ) ;
 int TEST_mem_eq (unsigned char*,int ,unsigned char*,int ) ;
 unsigned char** cipher_data ;
 int * ecb_data ;
 unsigned char** plain_data ;

__attribute__((used)) static int test_bf_ecb(int n)
{
    int ret = 1;
    BF_KEY key;
    unsigned char out[8];

    BF_set_key(&key, 8, ecb_data[n]);

    BF_ecb_encrypt(&(plain_data[n][0]), out, &key, BF_ENCRYPT);
    if (!TEST_mem_eq(&(cipher_data[n][0]), BF_BLOCK, out, BF_BLOCK))
        ret = 0;

    BF_ecb_encrypt(out, out, &key, BF_DECRYPT);
    if (!TEST_mem_eq(&(plain_data[n][0]), BF_BLOCK, out, BF_BLOCK))
        ret = 0;

    return ret;
}
