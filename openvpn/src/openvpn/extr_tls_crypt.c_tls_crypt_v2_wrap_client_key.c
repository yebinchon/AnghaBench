
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct key_ctx {int * hmac; int * cipher; } ;
struct key2 {scalar_t__ keys; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef int net_len ;
typedef int hmac_ctx_t ;
typedef int cipher_ctx_t ;


 int ASSERT (int ) ;
 int BEND (struct buffer*) ;
 int BLEN (struct buffer const*) ;
 void* BPTR (struct buffer const*) ;
 int D_CRYPTO_DEBUG ;
 int M_WARN ;
 int TLS_CRYPT_TAG_SIZE ;
 scalar_t__ TLS_CRYPT_V2_MAX_WKC_LEN ;
 scalar_t__ TLS_CRYPT_V2_TAG_SIZE ;
 struct buffer alloc_buf_gc (scalar_t__,struct gc_arena*) ;
 int buf_copy (struct buffer*,struct buffer*) ;
 scalar_t__ buf_forward_capacity (struct buffer*) ;
 int buf_inc_len (struct buffer*,int) ;
 int buf_write (struct buffer*,int *,int) ;
 int * buf_write_alloc (struct buffer*,int ) ;
 scalar_t__ cipher_ctx_block_size (int *) ;
 int cipher_ctx_final (int *,int ,int*) ;
 int cipher_ctx_reset (int *,int *) ;
 int cipher_ctx_update (int *,int ,int*,void*,int) ;
 int dmsg (int ,char*,int ) ;
 int format_hex (int *,int ,int ,struct gc_arena*) ;
 int hmac_ctx_final (int *,int *) ;
 int hmac_ctx_reset (int *) ;
 int hmac_ctx_update (int *,void*,int) ;
 int htons (scalar_t__) ;
 int msg (int ,char*) ;

__attribute__((used)) static bool
tls_crypt_v2_wrap_client_key(struct buffer *wkc,
                             const struct key2 *src_key,
                             const struct buffer *src_metadata,
                             struct key_ctx *server_key, struct gc_arena *gc)
{
    cipher_ctx_t *cipher_ctx = server_key->cipher;
    struct buffer work = alloc_buf_gc(TLS_CRYPT_V2_MAX_WKC_LEN
                                      + cipher_ctx_block_size(cipher_ctx), gc);


    uint8_t *tag = buf_write_alloc(&work, TLS_CRYPT_TAG_SIZE);
    if (!tag)
    {
        msg(M_WARN, "ERROR: could not write tag");
        return 0;
    }
    uint16_t net_len = htons(sizeof(src_key->keys) + BLEN(src_metadata)
                             + TLS_CRYPT_V2_TAG_SIZE + sizeof(uint16_t));
    hmac_ctx_t *hmac_ctx = server_key->hmac;
    hmac_ctx_reset(hmac_ctx);
    hmac_ctx_update(hmac_ctx, (void *)&net_len, sizeof(net_len));
    hmac_ctx_update(hmac_ctx, (void *)src_key->keys, sizeof(src_key->keys));
    hmac_ctx_update(hmac_ctx, BPTR(src_metadata), BLEN(src_metadata));
    hmac_ctx_final(hmac_ctx, tag);

    dmsg(D_CRYPTO_DEBUG, "TLS-CRYPT WRAP TAG: %s",
         format_hex(tag, TLS_CRYPT_TAG_SIZE, 0, gc));


    ASSERT(cipher_ctx_reset(cipher_ctx, tag));


    if (buf_forward_capacity(&work) < (sizeof(src_key->keys)
                                       + BLEN(src_metadata)
                                       + sizeof(net_len)
                                       + cipher_ctx_block_size(cipher_ctx)))
    {
        msg(M_WARN, "ERROR: could not crypt: insufficient space in dst");
        return 0;
    }


    int outlen = 0;
    ASSERT(cipher_ctx_update(cipher_ctx, BEND(&work), &outlen,
                             (void *)src_key->keys, sizeof(src_key->keys)));
    ASSERT(buf_inc_len(&work, outlen));
    ASSERT(cipher_ctx_update(cipher_ctx, BEND(&work), &outlen,
                             BPTR(src_metadata), BLEN(src_metadata)));
    ASSERT(buf_inc_len(&work, outlen));
    ASSERT(cipher_ctx_final(cipher_ctx, BEND(&work), &outlen));
    ASSERT(buf_inc_len(&work, outlen));
    ASSERT(buf_write(&work, &net_len, sizeof(net_len)));

    return buf_copy(wkc, &work);
}
