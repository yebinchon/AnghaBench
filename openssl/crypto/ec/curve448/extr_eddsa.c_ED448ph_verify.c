
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int OPENSSL_CTX ;


 scalar_t__ C448_SUCCESS ;
 scalar_t__ c448_ed448_verify_prehash (int *,int const*,int const*,int const*,int const*,int ) ;

int ED448ph_verify(OPENSSL_CTX *ctx, const uint8_t hash[64],
                   const uint8_t signature[114], const uint8_t public_key[57],
                   const uint8_t *context, size_t context_len)
{
    return c448_ed448_verify_prehash(ctx, signature, public_key, hash, context,
                                     (uint8_t)context_len) == C448_SUCCESS;
}
