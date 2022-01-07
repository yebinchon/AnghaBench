
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obuf ;
typedef int RC4_KEY ;


 int RC4 (int *,scalar_t__,int *,unsigned char*) ;
 int RC4_set_key (int *,int ,int *) ;
 int TEST_mem_eq (unsigned char*,scalar_t__,int ,scalar_t__) ;
 int ** data ;
 scalar_t__* data_len ;
 int ** keys ;
 int memset (unsigned char*,int ,int) ;
 int * output ;

__attribute__((used)) static int test_rc4_encrypt(const int i)
{
    unsigned char obuf[512];
    RC4_KEY key;

    RC4_set_key(&key, keys[i][0], &(keys[i][1]));
    memset(obuf, 0, sizeof(obuf));
    RC4(&key, data_len[i], &(data[i][0]), obuf);
    return TEST_mem_eq(obuf, data_len[i] + 1, output[i], data_len[i] + 1);
}
