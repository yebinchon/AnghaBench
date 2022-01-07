
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BF_KEY ;


 int BF_ENCRYPT ;
 int BF_ecb_encrypt (int ,unsigned char*,int *,int ) ;
 int BF_set_key (int *,int,int ) ;
 int TEST_mem_eq (unsigned char*,int,int *,int) ;
 int key_data ;
 int ** key_out ;
 int key_test ;

__attribute__((used)) static int test_bf_set_key(int n)
{
    int ret = 1;
    BF_KEY key;
    unsigned char out[8];

    BF_set_key(&key, n+1, key_test);
    BF_ecb_encrypt(key_data, out, &key, BF_ENCRYPT);

    if (!TEST_mem_eq(out, 8, &(key_out[n][0]), 8))
        ret = 0;

    return ret;
}
