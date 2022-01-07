
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int OPENSSL_CTX ;


 scalar_t__ C448_SUCCESS ;
 scalar_t__ c448_ed448_verify (int *,int const*,int const*,int const*,size_t,int ,int const*,int ) ;

int ED448_verify(OPENSSL_CTX *ctx, const uint8_t *message, size_t message_len,
                 const uint8_t signature[114], const uint8_t public_key[57],
                 const uint8_t *context, size_t context_len)
{
    return c448_ed448_verify(ctx, signature, public_key, message, message_len,
                             0, context, (uint8_t)context_len) == C448_SUCCESS;
}
