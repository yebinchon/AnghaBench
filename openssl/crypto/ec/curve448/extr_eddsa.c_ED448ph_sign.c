
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int OPENSSL_CTX ;


 scalar_t__ C448_SUCCESS ;
 scalar_t__ c448_ed448_sign_prehash (int *,int *,int const*,int const*,int const*,int const*,size_t) ;

int ED448ph_sign(OPENSSL_CTX *ctx, uint8_t *out_sig, const uint8_t hash[64],
                 const uint8_t public_key[57], const uint8_t private_key[57],
                 const uint8_t *context, size_t context_len)
{
    return c448_ed448_sign_prehash(ctx, out_sig, private_key, public_key, hash,
                                   context, context_len) == C448_SUCCESS;

}
