#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_LIB_PROV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char*,int*,unsigned char*,size_t) ; 
 int EVP_MAX_BLOCK_LENGTH ; 
 scalar_t__ NID_des_ede3_cbc ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 int /*<<< orphan*/  PROV_R_FAILED_TO_GENERATE_KEY ; 
 int /*<<< orphan*/  PROV_R_INVALID_CONSTANT_LENGTH ; 
 int /*<<< orphan*/  PROV_R_WRONG_FINAL_BLOCK_LENGTH ; 
 int /*<<< orphan*/  PROV_R_WRONG_OUTPUT_BUFFER_SIZE ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int FUNC10 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,size_t,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC13(const EVP_CIPHER *cipher, ENGINE *engine,
                   const unsigned char *key, size_t key_len,
                   const unsigned char *constant, size_t constant_len,
                   unsigned char *okey, size_t okey_len)
{
    EVP_CIPHER_CTX *ctx = NULL;
    unsigned char block[EVP_MAX_BLOCK_LENGTH * 2];
    unsigned char *plainblock, *cipherblock;
    size_t blocksize;
    size_t cipherlen;
    size_t osize;
    int des3_no_fixup = 0;
    int ret;

    if (key_len != okey_len) {
        /* special case for 3des, where the caller may be requesting
         * the random raw key, instead of the fixed up key  */
        if (FUNC5(cipher) == NID_des_ede3_cbc &&
            key_len == 24 && okey_len == 21) {
                des3_no_fixup = 1;
        } else {
            FUNC0(ERR_LIB_PROV, PROV_R_WRONG_OUTPUT_BUFFER_SIZE);
            return 0;
        }
    }

    ctx = FUNC3();
    if (ctx == NULL)
        return 0;

    ret = FUNC9(ctx, cipher, engine, key, key_len);
    if (!ret)
        goto out;

    /* Initialize input block */
    blocksize = FUNC1(ctx);

    if (constant_len > blocksize) {
        FUNC0(ERR_LIB_PROV, PROV_R_INVALID_CONSTANT_LENGTH);
        ret = 0;
        goto out;
    }

    FUNC12(block, blocksize, constant, constant_len);
    plainblock = block;
    cipherblock = block + EVP_MAX_BLOCK_LENGTH;

    for (osize = 0; osize < okey_len; osize += cipherlen) {
        int olen;

        ret = FUNC7(ctx, cipherblock, &olen,
                                plainblock, blocksize);
        if (!ret)
            goto out;
        cipherlen = olen;
        ret = FUNC6(ctx, cipherblock, &olen);
        if (!ret)
            goto out;
        if (olen != 0) {
            FUNC0(ERR_LIB_PROV, PROV_R_WRONG_FINAL_BLOCK_LENGTH);
            ret = 0;
            goto out;
        }

        /* write cipherblock out */
        if (cipherlen > okey_len - osize)
            cipherlen = okey_len - osize;
        FUNC11(okey + osize, cipherblock, cipherlen);

        if (okey_len > osize + cipherlen) {
            /* we need to reinitialize cipher context per spec */
            ret = FUNC4(ctx);
            if (!ret)
                goto out;
            ret = FUNC9(ctx, cipher, engine, key, key_len);
            if (!ret)
                goto out;

            /* also swap block offsets so last ciphertext becomes new
             * plaintext */
            plainblock = cipherblock;
            if (cipherblock == block) {
                cipherblock += EVP_MAX_BLOCK_LENGTH;
            } else {
                cipherblock = block;
            }
        }
    }

#ifndef OPENSSL_NO_DES
    if (FUNC5(cipher) == NID_des_ede3_cbc && !des3_no_fixup) {
        ret = FUNC10(okey);
        if (!ret) {
            FUNC0(ERR_LIB_PROV, PROV_R_FAILED_TO_GENERATE_KEY);
            goto out;
        }
    }
#endif

    ret = 1;

out:
    FUNC2(ctx);
    FUNC8(block, EVP_MAX_BLOCK_LENGTH * 2);
    return ret;
}