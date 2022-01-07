
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;


 scalar_t__ X448 (unsigned char*,unsigned char const*,unsigned char const*) ;
 size_t X448_KEYLEN ;
 int validate_ecx_derive (int *,unsigned char*,size_t*,unsigned char const**,unsigned char const**) ;

__attribute__((used)) static int pkey_ecx_derive448(EVP_PKEY_CTX *ctx, unsigned char *key,
                              size_t *keylen)
{
    const unsigned char *privkey, *pubkey;

    if (!validate_ecx_derive(ctx, key, keylen, &privkey, &pubkey)
            || (key != ((void*)0)
                && X448(key, privkey, pubkey) == 0))
        return 0;
    *keylen = X448_KEYLEN;
    return 1;
}
