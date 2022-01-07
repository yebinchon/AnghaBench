
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BF_LONG ;
typedef int BF_KEY ;


 int BF_BLOCK ;
 int BF_decrypt (int *,int *) ;
 int BF_encrypt (int *,int *) ;
 int BF_set_key (int *,int ,unsigned char*) ;
 int TEST_mem_eq (int *,int ,int *,int ) ;
 int ** bf_cipher ;
 scalar_t__* bf_key ;
 int ** bf_plain ;
 int strlen (scalar_t__) ;

__attribute__((used)) static int test_bf_ecb_raw(int n)
{
    int ret = 1;
    BF_KEY key;
    BF_LONG data[2];

    BF_set_key(&key, strlen(bf_key[n]), (unsigned char *)bf_key[n]);

    data[0] = bf_plain[n][0];
    data[1] = bf_plain[n][1];
    BF_encrypt(data, &key);
    if (!TEST_mem_eq(&(bf_cipher[n][0]), BF_BLOCK, &(data[0]), BF_BLOCK))
        ret = 0;

    BF_decrypt(&(data[0]), &key);
    if (!TEST_mem_eq(&(bf_plain[n][0]), BF_BLOCK, &(data[0]), BF_BLOCK))
        ret = 0;

    return ret;
}
