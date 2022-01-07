
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obuf ;
typedef int RC4_KEY ;


 int RC4 (int *,int const,int *,unsigned char*) ;
 int RC4_set_key (int *,int ,int *) ;
 int TEST_mem_eq (unsigned char*,int const,int ,int const) ;
 int ** data ;
 int const* data_len ;
 int ** keys ;
 int memset (unsigned char*,int ,int) ;
 int * output ;

__attribute__((used)) static int test_rc4_multi_call(const int i)
{
    unsigned char obuf[512];
    RC4_KEY key;

    RC4_set_key(&key, keys[3][0], &(keys[3][1]));
    memset(obuf, 0, sizeof(obuf));
    RC4(&key, i, &(data[3][0]), obuf);
    RC4(&key, data_len[3] - i, &(data[3][i]), &(obuf[i]));
    return TEST_mem_eq(obuf, data_len[3] + 1, output[3], data_len[3] + 1);
}
