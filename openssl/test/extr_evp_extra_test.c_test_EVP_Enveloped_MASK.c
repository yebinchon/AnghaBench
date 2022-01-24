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
typedef  int /*<<< orphan*/  msg ;
typedef  unsigned char EVP_PKEY ;
typedef  unsigned char EVP_CIPHER_CTX ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 () ; 
 int EVP_MAX_IV_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/  const*,unsigned char*,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,unsigned char*,int*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/  const*,unsigned char**,int*,unsigned char*,unsigned char**,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,unsigned char*,int*,unsigned char const*,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 unsigned char* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char const*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 unsigned char* FUNC16 () ; 

__attribute__((used)) static int FUNC17(void)
{
    int ret = 0;
    EVP_CIPHER_CTX *ctx = NULL;
    EVP_PKEY *keypair = NULL;
    unsigned char *kek = NULL;
    unsigned char iv[EVP_MAX_IV_LENGTH];
    static const unsigned char msg[] = { 1, 2, 3, 4, 5, 6, 7, 8 };
    int len, kek_len, ciphertext_len, plaintext_len;
    unsigned char ciphertext[32], plaintext[16];
    const EVP_CIPHER *type = FUNC10();

    if (!FUNC14(keypair = FUNC16())
            || !FUNC14(kek = FUNC12(FUNC6(keypair)))
            || !FUNC14(ctx = FUNC1())
            || !FUNC15(FUNC8(ctx, type, &kek, &kek_len, iv,
                                       &keypair, 1))
            || !FUNC15(FUNC9(ctx, ciphertext, &ciphertext_len,
                                         msg, sizeof(msg)))
            || !FUNC15(FUNC7(ctx, ciphertext + ciphertext_len,
                                        &len)))
        goto err;

    ciphertext_len += len;

    if (!FUNC15(FUNC3(ctx, type, kek, kek_len, iv, keypair))
            || !FUNC15(FUNC4(ctx, plaintext, &plaintext_len,
                                         ciphertext, ciphertext_len))
            || !FUNC15(FUNC2(ctx, plaintext + plaintext_len, &len)))
        goto err;

    plaintext_len += len;
    if (!FUNC13(msg, sizeof(msg), plaintext, plaintext_len))
        goto err;

    ret = 1;
err:
    FUNC11(kek);
    FUNC5(keypair);
    FUNC0(ctx);
    return ret;
}