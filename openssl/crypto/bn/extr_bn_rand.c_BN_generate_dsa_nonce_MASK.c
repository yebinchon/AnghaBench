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
typedef  int /*<<< orphan*/  random_bytes ;
typedef  int /*<<< orphan*/  private_bytes ;
typedef  int /*<<< orphan*/  done ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  BN_CTX ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  BN_F_BN_GENERATE_DSA_NONCE ; 
 int /*<<< orphan*/  BN_R_NO_SUITABLE_DIGEST ; 
 int /*<<< orphan*/  BN_R_PRIVATE_KEY_TOO_LARGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,unsigned int const,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/  const*,unsigned char*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*) ; 
 unsigned char* FUNC14 (unsigned int const) ; 
 int SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,unsigned char*,int) ; 

int FUNC18(BIGNUM *out, const BIGNUM *range,
                          const BIGNUM *priv, const unsigned char *message,
                          size_t message_len, BN_CTX *ctx)
{
    EVP_MD_CTX *mdctx = FUNC9();
    /*
     * We use 512 bits of random data per iteration to ensure that we have at
     * least |range| bits of randomness.
     */
    unsigned char random_bytes[64];
    unsigned char digest[SHA512_DIGEST_LENGTH];
    unsigned done, todo;
    /* We generate |range|+8 bytes of random output. */
    const unsigned num_k_bytes = FUNC3(range) + 8;
    unsigned char private_bytes[96];
    unsigned char *k_bytes = NULL;
    int ret = 0;
    EVP_MD *md = NULL;
    OPENSSL_CTX *libctx = FUNC15(ctx);

    if (mdctx == NULL)
        goto err;

    k_bytes = FUNC14(num_k_bytes);
    if (k_bytes == NULL)
        goto err;

    /* We copy |priv| into a local buffer to avoid exposing its length. */
    if (FUNC1(priv, private_bytes, sizeof(private_bytes)) < 0) {
        /*
         * No reasonable DSA or ECDSA key should have a private key this
         * large and we don't handle this case in order to avoid leaking the
         * length of the private key.
         */
        FUNC4(BN_F_BN_GENERATE_DSA_NONCE, BN_R_PRIVATE_KEY_TOO_LARGE);
        goto err;
    }

    md = FUNC10(libctx, "SHA512", NULL);
    if (md == NULL) {
        FUNC4(BN_F_BN_GENERATE_DSA_NONCE, BN_R_NO_SUITABLE_DIGEST);
        goto err;
    }
    for (done = 0; done < num_k_bytes;) {
        if (!FUNC17(libctx, random_bytes, sizeof(random_bytes)))
            goto err;

        if (!FUNC6(mdctx, md, NULL)
                || !FUNC7(mdctx, &done, sizeof(done))
                || !FUNC7(mdctx, private_bytes,
                                     sizeof(private_bytes))
                || !FUNC7(mdctx, message, message_len)
                || !FUNC7(mdctx, random_bytes, sizeof(random_bytes))
                || !FUNC5(mdctx, digest, NULL))
            goto err;

        todo = num_k_bytes - done;
        if (todo > SHA512_DIGEST_LENGTH)
            todo = SHA512_DIGEST_LENGTH;
        FUNC16(k_bytes + done, digest, todo);
        done += todo;
    }

    if (!FUNC0(k_bytes, num_k_bytes, out))
        goto err;
    if (FUNC2(out, out, range, ctx) != 1)
        goto err;
    ret = 1;

 err:
    FUNC8(mdctx);
    FUNC11(md);
    FUNC13(k_bytes);
    FUNC12(private_bytes, sizeof(private_bytes));
    return ret;
}