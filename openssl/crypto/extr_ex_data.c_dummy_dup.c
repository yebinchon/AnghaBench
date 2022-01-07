
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRYPTO_EX_DATA ;



__attribute__((used)) static int dummy_dup(CRYPTO_EX_DATA *to, const CRYPTO_EX_DATA *from,
                     void *from_d, int idx,
                     long argl, void *argp)
{
    return 1;
}
