
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_17__ {TYPE_3__* hw; } ;
struct TYPE_12__ {int aad; int text; } ;
struct TYPE_11__ {int d; } ;
struct TYPE_14__ {int* counter; TYPE_7__ base; scalar_t__ partial_len; int buf; TYPE_1__ key; } ;
struct TYPE_16__ {size_t tls_payload_length; int mac_inited; unsigned char* tls_aad; int aad; unsigned char* tag; size_t tag_len; TYPE_2__ len; TYPE_4__ chacha; int poly1305; } ;
struct TYPE_15__ {scalar_t__ enc; } ;
struct TYPE_13__ {int (* cipher ) (TYPE_7__*,unsigned char*,unsigned char const*,size_t) ;} ;
typedef TYPE_5__ PROV_CIPHER_CTX ;
typedef TYPE_6__ PROV_CHACHA20_POLY1305_CTX ;
typedef int POLY1305 ;


 int CHACHA_BLK_SIZE ;
 scalar_t__ CRYPTO_memcmp (unsigned char*,unsigned char const*,size_t) ;
 int ChaCha20_ctr32 (int ,unsigned char*,int ,int ,int*) ;
 size_t EVP_AEAD_TLS1_AAD_LEN ;
 size_t NO_TLS_PAYLOAD_LENGTH ;
 size_t POLY1305_BLOCK_SIZE ;
 int Poly1305_Final (int *,unsigned char*) ;
 int Poly1305_Init (int *,int ) ;
 int Poly1305_Update (int *,unsigned char const*,size_t) ;
 int chacha20_poly1305_tls_cipher (TYPE_5__*,unsigned char*,size_t*,unsigned char const*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;
 int memset (unsigned char*,int ,size_t) ;
 int stub1 (TYPE_7__*,unsigned char*,unsigned char const*,size_t) ;
 int stub2 (TYPE_7__*,unsigned char*,unsigned char const*,size_t) ;
 unsigned char* zero ;

__attribute__((used)) static int chacha20_poly1305_aead_cipher(PROV_CIPHER_CTX *bctx,
                                         unsigned char *out, size_t *outl,
                                         const unsigned char *in, size_t inl)
{
    PROV_CHACHA20_POLY1305_CTX *ctx = (PROV_CHACHA20_POLY1305_CTX *)bctx;
    POLY1305 *poly = &ctx->poly1305;
    size_t rem, plen = ctx->tls_payload_length;
    size_t olen = 0;
    int rv = 0;

    const union {
        long one;
        char little;
    } is_endian = { 1 };

    if (!ctx->mac_inited) {

        if (plen != NO_TLS_PAYLOAD_LENGTH && out != ((void*)0)) {
            return chacha20_poly1305_tls_cipher(bctx, out, outl, in, inl);
        }

        ctx->chacha.counter[0] = 0;
        ChaCha20_ctr32(ctx->chacha.buf, zero, CHACHA_BLK_SIZE,
                       ctx->chacha.key.d, ctx->chacha.counter);
        Poly1305_Init(poly, ctx->chacha.buf);
        ctx->chacha.counter[0] = 1;
        ctx->chacha.partial_len = 0;
        ctx->len.aad = ctx->len.text = 0;
        ctx->mac_inited = 1;
        if (plen != NO_TLS_PAYLOAD_LENGTH) {
            Poly1305_Update(poly, ctx->tls_aad, EVP_AEAD_TLS1_AAD_LEN);
            ctx->len.aad = EVP_AEAD_TLS1_AAD_LEN;
            ctx->aad = 1;
        }
    }

    if (in != ((void*)0)) {
        if (out == ((void*)0)) {
            Poly1305_Update(poly, in, inl);
            ctx->len.aad += inl;
            ctx->aad = 1;
            goto finish;
        } else {
            if (ctx->aad) {
                if ((rem = (size_t)ctx->len.aad % POLY1305_BLOCK_SIZE))
                    Poly1305_Update(poly, zero, POLY1305_BLOCK_SIZE - rem);
                ctx->aad = 0;
            }

            ctx->tls_payload_length = NO_TLS_PAYLOAD_LENGTH;
            if (plen == NO_TLS_PAYLOAD_LENGTH)
                plen = inl;
            else if (inl != plen + POLY1305_BLOCK_SIZE)
                goto err;

            if (bctx->enc) {
                ctx->chacha.base.hw->cipher(&ctx->chacha.base, out, in, plen);
                Poly1305_Update(poly, out, plen);
                in += plen;
                out += plen;
                ctx->len.text += plen;
            } else {
                Poly1305_Update(poly, in, plen);
                ctx->chacha.base.hw->cipher(&ctx->chacha.base, out, in, plen);
                in += plen;
                out += plen;
                ctx->len.text += plen;
            }
        }
    }

    if (in == ((void*)0) || inl != plen) {

        unsigned char temp[POLY1305_BLOCK_SIZE];

        if (ctx->aad) {
            if ((rem = (size_t)ctx->len.aad % POLY1305_BLOCK_SIZE))
                Poly1305_Update(poly, zero, POLY1305_BLOCK_SIZE - rem);
            ctx->aad = 0;
        }

        if ((rem = (size_t)ctx->len.text % POLY1305_BLOCK_SIZE))
            Poly1305_Update(poly, zero, POLY1305_BLOCK_SIZE - rem);

        if (is_endian.little) {
            Poly1305_Update(poly, (unsigned char *)&ctx->len,
                            POLY1305_BLOCK_SIZE);
        } else {
            temp[0] = (unsigned char)(ctx->len.aad);
            temp[1] = (unsigned char)(ctx->len.aad>>8);
            temp[2] = (unsigned char)(ctx->len.aad>>16);
            temp[3] = (unsigned char)(ctx->len.aad>>24);
            temp[4] = (unsigned char)(ctx->len.aad>>32);
            temp[5] = (unsigned char)(ctx->len.aad>>40);
            temp[6] = (unsigned char)(ctx->len.aad>>48);
            temp[7] = (unsigned char)(ctx->len.aad>>56);
            temp[8] = (unsigned char)(ctx->len.text);
            temp[9] = (unsigned char)(ctx->len.text>>8);
            temp[10] = (unsigned char)(ctx->len.text>>16);
            temp[11] = (unsigned char)(ctx->len.text>>24);
            temp[12] = (unsigned char)(ctx->len.text>>32);
            temp[13] = (unsigned char)(ctx->len.text>>40);
            temp[14] = (unsigned char)(ctx->len.text>>48);
            temp[15] = (unsigned char)(ctx->len.text>>56);
            Poly1305_Update(poly, temp, POLY1305_BLOCK_SIZE);
        }
        Poly1305_Final(poly, bctx->enc ? ctx->tag : temp);
        ctx->mac_inited = 0;

        if (in != ((void*)0) && inl != plen) {
            if (bctx->enc) {
                memcpy(out, ctx->tag, POLY1305_BLOCK_SIZE);
            } else {
                if (CRYPTO_memcmp(temp, in, POLY1305_BLOCK_SIZE)) {
                    memset(out - plen, 0, plen);
                    goto err;
                }
            }
        }
        else if (!bctx->enc) {
            if (CRYPTO_memcmp(temp, ctx->tag, ctx->tag_len))
                goto err;
        }
    }
finish:
    olen = inl;
    rv = 1;
err:
    *outl = olen;
    return rv;
}
