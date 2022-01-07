
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtag ;
struct TYPE_6__ {unsigned char* plaintext; size_t plaintext_len; unsigned char* ciphertext; size_t ciphertext_len; scalar_t__ aead; int iv_len; unsigned char* tag; int tag_len; scalar_t__ key_bits; unsigned char** aad; int* aad_len; scalar_t__ tag_late; int * iv; int * cipher; int * key; int key_len; scalar_t__ rounds; } ;
struct TYPE_5__ {char* err; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef int EVP_CIPHER_CTX ;
typedef TYPE_2__ CIPHER_DATA ;


 int EVP_CIPHER_CTX_FLAG_WRAP_ALLOW ;
 int EVP_CIPHER_CTX_ctrl (int *,int ,int,unsigned char*) ;
 int EVP_CIPHER_CTX_free (int *) ;
 int EVP_CIPHER_CTX_iv (int *) ;
 scalar_t__ EVP_CIPHER_CTX_iv_length (int *) ;
 int * EVP_CIPHER_CTX_new () ;
 int EVP_CIPHER_CTX_set_flags (int *,int ) ;
 int EVP_CIPHER_CTX_set_key_length (int *,int ) ;
 int EVP_CIPHER_CTX_set_padding (int *,int ) ;
 int EVP_CIPHER_flags (int *) ;
 scalar_t__ EVP_CIPH_CCM_MODE ;
 int EVP_CIPH_CUSTOM_IV ;
 scalar_t__ EVP_CIPH_GCM_MODE ;
 scalar_t__ EVP_CIPH_OCB_MODE ;
 int EVP_CTRL_AEAD_GET_TAG ;
 int EVP_CTRL_AEAD_SET_IVLEN ;
 int EVP_CTRL_AEAD_SET_TAG ;
 int EVP_CTRL_SET_RC2_KEY_BITS ;
 int EVP_CTRL_SET_RC5_ROUNDS ;
 int EVP_CipherFinal_ex (int *,unsigned char*,int*) ;
 int EVP_CipherInit_ex (int *,int *,int *,int *,int *,int) ;
 int EVP_CipherUpdate (int *,unsigned char*,int*,unsigned char*,int) ;
 int EVP_MAX_BLOCK_LENGTH ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int TEST_mem_eq (int *,size_t,int ,size_t) ;
 int TEST_ptr (int *) ;
 int TEST_size_t_le (int,int) ;
 unsigned char* memcpy (unsigned char*,unsigned char*,size_t) ;
 int memory_err_compare (TYPE_1__*,char*,unsigned char*,size_t,unsigned char*,int) ;

__attribute__((used)) static int cipher_test_enc(EVP_TEST *t, int enc,
                           size_t out_misalign, size_t inp_misalign, int frag)
{
    CIPHER_DATA *expected = t->data;
    unsigned char *in, *expected_out, *tmp = ((void*)0);
    size_t in_len, out_len, donelen = 0;
    int ok = 0, tmplen, chunklen, tmpflen, i;
    EVP_CIPHER_CTX *ctx = ((void*)0);

    t->err = "TEST_FAILURE";
    if (!TEST_ptr(ctx = EVP_CIPHER_CTX_new()))
        goto err;
    EVP_CIPHER_CTX_set_flags(ctx, EVP_CIPHER_CTX_FLAG_WRAP_ALLOW);
    if (enc) {
        in = expected->plaintext;
        in_len = expected->plaintext_len;
        expected_out = expected->ciphertext;
        out_len = expected->ciphertext_len;
    } else {
        in = expected->ciphertext;
        in_len = expected->ciphertext_len;
        expected_out = expected->plaintext;
        out_len = expected->plaintext_len;
    }
    if (inp_misalign == (size_t)-1) {



        tmp = OPENSSL_malloc(out_misalign + in_len + 2 * EVP_MAX_BLOCK_LENGTH);
        if (!tmp)
            goto err;
        in = memcpy(tmp + out_misalign, in, in_len);
    } else {
        inp_misalign += 16 - ((out_misalign + in_len) & 15);
        tmp = OPENSSL_malloc(out_misalign + in_len + 2 * EVP_MAX_BLOCK_LENGTH +
                             inp_misalign + in_len);
        if (!tmp)
            goto err;
        in = memcpy(tmp + out_misalign + in_len + 2 * EVP_MAX_BLOCK_LENGTH +
                    inp_misalign, in, in_len);
    }
    if (!EVP_CipherInit_ex(ctx, expected->cipher, ((void*)0), ((void*)0), ((void*)0), enc)) {
        t->err = "CIPHERINIT_ERROR";
        goto err;
    }
    if (expected->iv) {
        if (expected->aead) {
            if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_IVLEN,
                                     expected->iv_len, 0)) {
                t->err = "INVALID_IV_LENGTH";
                goto err;
            }
        } else if (expected->iv_len != (size_t)EVP_CIPHER_CTX_iv_length(ctx)) {
            t->err = "INVALID_IV_LENGTH";
            goto err;
        }
    }
    if (expected->aead) {
        unsigned char *tag;




        if (enc || expected->aead == EVP_CIPH_OCB_MODE || expected->tag_late) {
            t->err = "TAG_LENGTH_SET_ERROR";
            tag = ((void*)0);
        } else {
            t->err = "TAG_SET_ERROR";
            tag = expected->tag;
        }
        if (tag || expected->aead != EVP_CIPH_GCM_MODE) {
            if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG,
                                     expected->tag_len, tag))
                goto err;
        }
    }

    if (expected->rounds > 0) {
        int rounds = (int)expected->rounds;

        if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_SET_RC5_ROUNDS, rounds, ((void*)0))) {
            t->err = "INVALID_ROUNDS";
            goto err;
        }
    }

    if (!EVP_CIPHER_CTX_set_key_length(ctx, expected->key_len)) {
        t->err = "INVALID_KEY_LENGTH";
        goto err;
    }
    if (expected->key_bits > 0) {
        int bits = (int)expected->key_bits;

        if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_SET_RC2_KEY_BITS, bits, ((void*)0))) {
            t->err = "INVALID KEY BITS";
            goto err;
        }
    }
    if (!EVP_CipherInit_ex(ctx, ((void*)0), ((void*)0), expected->key, expected->iv, -1)) {
        t->err = "KEY_SET_ERROR";
        goto err;
    }


    if (expected->iv != ((void*)0)
        && (EVP_CIPHER_flags(expected->cipher) & EVP_CIPH_CUSTOM_IV) == 0
        && !TEST_mem_eq(expected->iv, expected->iv_len,
                        EVP_CIPHER_CTX_iv(ctx), expected->iv_len)) {
        t->err = "INVALID_IV";
        goto err;
    }

    if (expected->aead == EVP_CIPH_CCM_MODE) {
        if (!EVP_CipherUpdate(ctx, ((void*)0), &tmplen, ((void*)0), out_len)) {
            t->err = "CCM_PLAINTEXT_LENGTH_SET_ERROR";
            goto err;
        }
    }
    if (expected->aad[0] != ((void*)0)) {
        t->err = "AAD_SET_ERROR";
        if (!frag) {
            for (i = 0; expected->aad[i] != ((void*)0); i++) {
                if (!EVP_CipherUpdate(ctx, ((void*)0), &chunklen, expected->aad[i],
                                      expected->aad_len[i]))
                    goto err;
            }
        } else {



            for (i = 0; expected->aad[i] != ((void*)0); i++) {
                if (expected->aad_len[i] > 0) {
                    if (!EVP_CipherUpdate(ctx, ((void*)0), &chunklen, expected->aad[i], 1))
                        goto err;
                    donelen++;
                }
                if (expected->aad_len[i] > 2) {
                    if (!EVP_CipherUpdate(ctx, ((void*)0), &chunklen,
                                          expected->aad[i] + donelen,
                                          expected->aad_len[i] - 2))
                        goto err;
                    donelen += expected->aad_len[i] - 2;
                }
                if (expected->aad_len[i] > 1
                    && !EVP_CipherUpdate(ctx, ((void*)0), &chunklen,
                                         expected->aad[i] + donelen, 1))
                    goto err;
            }
        }
    }

    if (!enc && (expected->aead == EVP_CIPH_OCB_MODE || expected->tag_late)) {
        if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_SET_TAG,
                                 expected->tag_len, expected->tag)) {
            t->err = "TAG_SET_ERROR";
            goto err;
        }
    }

    EVP_CIPHER_CTX_set_padding(ctx, 0);
    t->err = "CIPHERUPDATE_ERROR";
    tmplen = 0;
    if (!frag) {

        if (!EVP_CipherUpdate(ctx, tmp + out_misalign, &tmplen, in, in_len))
            goto err;
    } else {

        if (in_len > 0) {
            if (!EVP_CipherUpdate(ctx, tmp + out_misalign, &chunklen, in, 1))
                goto err;
            tmplen += chunklen;
            in++;
            in_len--;
        }
        if (in_len > 1) {
            if (!EVP_CipherUpdate(ctx, tmp + out_misalign + tmplen, &chunklen,
                                  in, in_len - 1))
                goto err;
            tmplen += chunklen;
            in += in_len - 1;
            in_len = 1;
        }
        if (in_len > 0 ) {
            if (!EVP_CipherUpdate(ctx, tmp + out_misalign + tmplen, &chunklen,
                                  in, 1))
                goto err;
            tmplen += chunklen;
        }
    }
    if (!EVP_CipherFinal_ex(ctx, tmp + out_misalign + tmplen, &tmpflen)) {
        t->err = "CIPHERFINAL_ERROR";
        goto err;
    }
    if (!memory_err_compare(t, "VALUE_MISMATCH", expected_out, out_len,
                            tmp + out_misalign, tmplen + tmpflen))
        goto err;
    if (enc && expected->aead) {
        unsigned char rtag[16];

        if (!TEST_size_t_le(expected->tag_len, sizeof(rtag))) {
            t->err = "TAG_LENGTH_INTERNAL_ERROR";
            goto err;
        }
        if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_AEAD_GET_TAG,
                                 expected->tag_len, rtag)) {
            t->err = "TAG_RETRIEVE_ERROR";
            goto err;
        }
        if (!memory_err_compare(t, "TAG_VALUE_MISMATCH",
                                expected->tag, expected->tag_len,
                                rtag, expected->tag_len))
            goto err;
    }
    t->err = ((void*)0);
    ok = 1;
 err:
    OPENSSL_free(tmp);
    EVP_CIPHER_CTX_free(ctx);
    return ok;
}
