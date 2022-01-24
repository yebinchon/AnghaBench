#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtag ;
struct TYPE_6__ {unsigned char* plaintext; size_t plaintext_len; unsigned char* ciphertext; size_t ciphertext_len; scalar_t__ aead; int iv_len; unsigned char* tag; int tag_len; scalar_t__ key_bits; unsigned char** aad; int* aad_len; scalar_t__ tag_late; int /*<<< orphan*/ * iv; int /*<<< orphan*/ * cipher; int /*<<< orphan*/ * key; int /*<<< orphan*/  key_len; scalar_t__ rounds; } ;
struct TYPE_5__ {char* err; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  TYPE_2__ CIPHER_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  EVP_CIPHER_CTX_FLAG_WRAP_ALLOW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ EVP_CIPH_CCM_MODE ; 
 int EVP_CIPH_CUSTOM_IV ; 
 scalar_t__ EVP_CIPH_GCM_MODE ; 
 scalar_t__ EVP_CIPH_OCB_MODE ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_GET_TAG ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_IVLEN ; 
 int /*<<< orphan*/  EVP_CTRL_AEAD_SET_TAG ; 
 int /*<<< orphan*/  EVP_CTRL_SET_RC2_KEY_BITS ; 
 int /*<<< orphan*/  EVP_CTRL_SET_RC5_ROUNDS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,int) ; 
 int EVP_MAX_BLOCK_LENGTH ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 unsigned char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 
 unsigned char* FUNC17 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*,char*,unsigned char*,size_t,unsigned char*,int) ; 

__attribute__((used)) static int FUNC19(EVP_TEST *t, int enc,
                           size_t out_misalign, size_t inp_misalign, int frag)
{
    CIPHER_DATA *expected = t->data;
    unsigned char *in, *expected_out, *tmp = NULL;
    size_t in_len, out_len, donelen = 0;
    int ok = 0, tmplen, chunklen, tmpflen, i;
    EVP_CIPHER_CTX *ctx = NULL;

    t->err = "TEST_FAILURE";
    if (!FUNC15(ctx = FUNC4()))
        goto err;
    FUNC5(ctx, EVP_CIPHER_CTX_FLAG_WRAP_ALLOW);
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
        /*
         * Exercise in-place encryption
         */
        tmp = FUNC13(out_misalign + in_len + 2 * EVP_MAX_BLOCK_LENGTH);
        if (!tmp)
            goto err;
        in = FUNC17(tmp + out_misalign, in, in_len);
    } else {
        inp_misalign += 16 - ((out_misalign + in_len) & 15);
        /*
         * 'tmp' will store both output and copy of input. We make the copy
         * of input to specifically aligned part of 'tmp'. So we just
         * figured out how much padding would ensure the required alignment,
         * now we allocate extended buffer and finally copy the input just
         * past inp_misalign in expression below. Output will be written
         * past out_misalign...
         */
        tmp = FUNC13(out_misalign + in_len + 2 * EVP_MAX_BLOCK_LENGTH +
                             inp_misalign + in_len);
        if (!tmp)
            goto err;
        in = FUNC17(tmp + out_misalign + in_len + 2 * EVP_MAX_BLOCK_LENGTH +
                    inp_misalign, in, in_len);
    }
    if (!FUNC10(ctx, expected->cipher, NULL, NULL, NULL, enc)) {
        t->err = "CIPHERINIT_ERROR";
        goto err;
    }
    if (expected->iv) {
        if (expected->aead) {
            if (!FUNC0(ctx, EVP_CTRL_AEAD_SET_IVLEN,
                                     expected->iv_len, 0)) {
                t->err = "INVALID_IV_LENGTH";
                goto err;
            }
        } else if (expected->iv_len != (size_t)FUNC3(ctx)) {
            t->err = "INVALID_IV_LENGTH";
            goto err;
        }
    }
    if (expected->aead) {
        unsigned char *tag;
        /*
         * If encrypting or OCB just set tag length initially, otherwise
         * set tag length and value.
         */
        if (enc || expected->aead == EVP_CIPH_OCB_MODE || expected->tag_late) {
            t->err = "TAG_LENGTH_SET_ERROR";
            tag = NULL;
        } else {
            t->err = "TAG_SET_ERROR";
            tag = expected->tag;
        }
        if (tag || expected->aead != EVP_CIPH_GCM_MODE) {
            if (!FUNC0(ctx, EVP_CTRL_AEAD_SET_TAG,
                                     expected->tag_len, tag))
                goto err;
        }
    }

    if (expected->rounds > 0) {
        int  rounds = (int)expected->rounds;

        if (!FUNC0(ctx, EVP_CTRL_SET_RC5_ROUNDS, rounds, NULL)) {
            t->err = "INVALID_ROUNDS";
            goto err;
        }
    }

    if (!FUNC6(ctx, expected->key_len)) {
        t->err = "INVALID_KEY_LENGTH";
        goto err;
    }
    if (expected->key_bits > 0) {
        int bits = (int)expected->key_bits;

        if (!FUNC0(ctx, EVP_CTRL_SET_RC2_KEY_BITS, bits, NULL)) {
            t->err = "INVALID KEY BITS";
            goto err;
        }
    }
    if (!FUNC10(ctx, NULL, NULL, expected->key, expected->iv, -1)) {
        t->err = "KEY_SET_ERROR";
        goto err;
    }

    /* Check that we get the same IV back */
    if (expected->iv != NULL
        && (FUNC8(expected->cipher) & EVP_CIPH_CUSTOM_IV) == 0
        && !FUNC14(expected->iv, expected->iv_len,
                        FUNC2(ctx), expected->iv_len)) {
        t->err = "INVALID_IV";
        goto err;
    }

    if (expected->aead == EVP_CIPH_CCM_MODE) {
        if (!FUNC11(ctx, NULL, &tmplen, NULL, out_len)) {
            t->err = "CCM_PLAINTEXT_LENGTH_SET_ERROR";
            goto err;
        }
    }
    if (expected->aad[0] != NULL) {
        t->err = "AAD_SET_ERROR";
        if (!frag) {
            for (i = 0; expected->aad[i] != NULL; i++) {
                if (!FUNC11(ctx, NULL, &chunklen, expected->aad[i],
                                      expected->aad_len[i]))
                    goto err;
            }
        } else {
            /*
             * Supply the AAD in chunks less than the block size where possible
             */
            for (i = 0; expected->aad[i] != NULL; i++) {
                if (expected->aad_len[i] > 0) {
                    if (!FUNC11(ctx, NULL, &chunklen, expected->aad[i], 1))
                        goto err;
                    donelen++;
                }
                if (expected->aad_len[i] > 2) {
                    if (!FUNC11(ctx, NULL, &chunklen,
                                          expected->aad[i] + donelen,
                                          expected->aad_len[i] - 2))
                        goto err;
                    donelen += expected->aad_len[i] - 2;
                }
                if (expected->aad_len[i] > 1
                    && !FUNC11(ctx, NULL, &chunklen,
                                         expected->aad[i] + donelen, 1))
                    goto err;
            }
        }
    }

    if (!enc && (expected->aead == EVP_CIPH_OCB_MODE || expected->tag_late)) {
        if (!FUNC0(ctx, EVP_CTRL_AEAD_SET_TAG,
                                 expected->tag_len, expected->tag)) {
            t->err = "TAG_SET_ERROR";
            goto err;
        }
    }

    FUNC7(ctx, 0);
    t->err = "CIPHERUPDATE_ERROR";
    tmplen = 0;
    if (!frag) {
        /* We supply the data all in one go */
        if (!FUNC11(ctx, tmp + out_misalign, &tmplen, in, in_len))
            goto err;
    } else {
        /* Supply the data in chunks less than the block size where possible */
        if (in_len > 0) {
            if (!FUNC11(ctx, tmp + out_misalign, &chunklen, in, 1))
                goto err;
            tmplen += chunklen;
            in++;
            in_len--;
        }
        if (in_len > 1) {
            if (!FUNC11(ctx, tmp + out_misalign + tmplen, &chunklen,
                                  in, in_len - 1))
                goto err;
            tmplen += chunklen;
            in += in_len - 1;
            in_len = 1;
        }
        if (in_len > 0 ) {
            if (!FUNC11(ctx, tmp + out_misalign + tmplen, &chunklen,
                                  in, 1))
                goto err;
            tmplen += chunklen;
        }
    }
    if (!FUNC9(ctx, tmp + out_misalign + tmplen, &tmpflen)) {
        t->err = "CIPHERFINAL_ERROR";
        goto err;
    }
    if (!FUNC18(t, "VALUE_MISMATCH", expected_out, out_len,
                            tmp + out_misalign, tmplen + tmpflen))
        goto err;
    if (enc && expected->aead) {
        unsigned char rtag[16];

        if (!FUNC16(expected->tag_len, sizeof(rtag))) {
            t->err = "TAG_LENGTH_INTERNAL_ERROR";
            goto err;
        }
        if (!FUNC0(ctx, EVP_CTRL_AEAD_GET_TAG,
                                 expected->tag_len, rtag)) {
            t->err = "TAG_RETRIEVE_ERROR";
            goto err;
        }
        if (!FUNC18(t, "TAG_VALUE_MISMATCH",
                                expected->tag, expected->tag_len,
                                rtag, expected->tag_len))
            goto err;
    }
    t->err = NULL;
    ok = 1;
 err:
    FUNC12(tmp);
    FUNC1(ctx);
    return ok;
}