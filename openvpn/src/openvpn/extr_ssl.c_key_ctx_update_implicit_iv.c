
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct key_ctx {size_t implicit_iv_len; int implicit_iv; int cipher; } ;
typedef int packet_id_type ;
typedef int cipher_kt_t ;


 int ASSERT (int) ;
 int OPENVPN_AEAD_MIN_IV_LEN ;
 size_t OPENVPN_MAX_IV_LENGTH ;
 int * cipher_ctx_get_cipher_kt (int ) ;
 int cipher_kt_iv_size (int const*) ;
 scalar_t__ cipher_kt_mode_aead (int const*) ;
 int memcpy (int ,int *,size_t) ;

__attribute__((used)) static void
key_ctx_update_implicit_iv(struct key_ctx *ctx, uint8_t *key, size_t key_len)
{
    const cipher_kt_t *cipher_kt = cipher_ctx_get_cipher_kt(ctx->cipher);


    if (cipher_kt_mode_aead(cipher_kt))
    {
        size_t impl_iv_len = 0;
        ASSERT(cipher_kt_iv_size(cipher_kt) >= OPENVPN_AEAD_MIN_IV_LEN);
        impl_iv_len = cipher_kt_iv_size(cipher_kt) - sizeof(packet_id_type);
        ASSERT(impl_iv_len <= OPENVPN_MAX_IV_LENGTH);
        ASSERT(impl_iv_len <= key_len);
        memcpy(ctx->implicit_iv, key, impl_iv_len);
        ctx->implicit_iv_len = impl_iv_len;
    }
}
