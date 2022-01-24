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

/* Variables and functions */
 char* FUNC0 (unsigned char*,int) ; 
 int DIGEST_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned char*,int /*<<< orphan*/ ,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int*,void const*,int) ; 
 int EVP_MAX_BLOCK_LENGTH ; 
 int EVP_MAX_IV_LENGTH ; 
 int EVP_MAX_KEY_LENGTH ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int SALT_SIZE ; 
 int /*<<< orphan*/  FUNC7 (void const*,int,char const*,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 unsigned char* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

char *
FUNC12(const void *p, int len, const char *password) {
    EVP_CIPHER_CTX ctx;
    unsigned char md[DIGEST_SIZE];
    unsigned char iv[EVP_MAX_IV_LENGTH];
    unsigned char key[EVP_MAX_KEY_LENGTH];
    unsigned char *out;
    char *b64;
    int offset, rlen;

    if (p == 0 || len <= 0 || password == 0 || *password == 0) {
        return 0;
    }
    out = FUNC10(SALT_SIZE + DIGEST_SIZE + len + EVP_MAX_BLOCK_LENGTH);
    FUNC9(out);
    FUNC7(p, len, password, out, md);
    FUNC1(FUNC5(), FUNC6(), out,
        (unsigned char *) password, FUNC11(password), 1, key, iv);
    FUNC3(&ctx, FUNC5(), key, iv);
    offset = SALT_SIZE;
    FUNC4(&ctx, out + offset, &rlen, md, DIGEST_SIZE);
    offset += rlen;
    FUNC4(&ctx, out + offset, &rlen, p, len);
    offset += rlen;
    FUNC2(&ctx, out + offset, &rlen);
    b64 = FUNC0(out, offset + rlen);
    FUNC8(out);
    return b64;
}