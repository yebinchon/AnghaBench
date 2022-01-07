
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int SIPHASH_MAX_DIGEST_SIZE ;

__attribute__((used)) static int siphash_size(const EVP_PKEY *pkey)
{
    return SIPHASH_MAX_DIGEST_SIZE;
}
