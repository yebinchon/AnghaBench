
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;


 int POLY1305_DIGEST_SIZE ;

__attribute__((used)) static int poly1305_size(const EVP_PKEY *pkey)
{
    return POLY1305_DIGEST_SIZE;
}
