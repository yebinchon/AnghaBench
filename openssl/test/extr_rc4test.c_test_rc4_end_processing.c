
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int obuf ;
typedef int RC4_KEY ;


 int RC4 (int *,int const,int *,unsigned char*) ;
 int RC4_set_key (int *,int ,int *) ;
 int TEST_mem_eq (unsigned char*,int const,int ,int const) ;
 int TEST_uchar_eq (unsigned char,int ) ;
 int ** data ;
 int ** keys ;
 int memset (unsigned char*,int ,int) ;
 int * output ;

__attribute__((used)) static int test_rc4_end_processing(const int i)
{
    unsigned char obuf[512];
    RC4_KEY key;

    RC4_set_key(&key, keys[3][0], &(keys[3][1]));
    memset(obuf, 0, sizeof(obuf));
    RC4(&key, i, &(data[3][0]), obuf);
    if (!TEST_mem_eq(obuf, i, output[3], i))
        return 0;
    return TEST_uchar_eq(obuf[i], 0);
}
