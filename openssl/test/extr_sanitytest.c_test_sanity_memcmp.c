
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_memcmp (char*,char*,int) ;

__attribute__((used)) static int test_sanity_memcmp(void)
{
    return CRYPTO_memcmp("ab","cd",2);
}
