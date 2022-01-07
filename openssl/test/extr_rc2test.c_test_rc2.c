
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RC2_KEY ;


 int RC2_DECRYPT ;
 int RC2_ENCRYPT ;
 int RC2_ecb_encrypt (unsigned char*,unsigned char*,int *,int ) ;
 int RC2_set_key (int *,int,int *,int ) ;
 unsigned char** RC2cipher ;
 int ** RC2key ;
 unsigned char** RC2plain ;
 int TEST_mem_eq (unsigned char*,int,unsigned char*,int) ;

__attribute__((used)) static int test_rc2(const int n)
{
    int testresult = 1;
    RC2_KEY key;
    unsigned char buf[8], buf2[8];

    RC2_set_key(&key, 16, &(RC2key[n][0]), 0 );

    RC2_ecb_encrypt(&RC2plain[n][0], buf, &key, RC2_ENCRYPT);
    if (!TEST_mem_eq(&RC2cipher[n][0], 8, buf, 8))
        testresult = 0;

    RC2_ecb_encrypt(buf, buf2, &key, RC2_DECRYPT);
    if (!TEST_mem_eq(&RC2plain[n][0], 8, buf2, 8))
        testresult = 0;

    return testresult;
}
