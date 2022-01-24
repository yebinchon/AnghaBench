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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 unsigned int SHA256_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(const uint8_t *message, size_t messageLen, const uint8_t *key,
           size_t keylen, uint8_t *digest)
{
    unsigned int digestLen;
    HMAC_CTX ctx;

    FUNC2(ctx, key, keylen);
    FUNC0(ctx, message, messageLen);

#if defined(USE_MBEDTLS) || defined(USE_POLARSSL) || defined(USE_GNUTLS)
    digestLen = SHA256_DIGEST_LENGTH;
    HMAC_finish(ctx, digest);
#else
    FUNC1(ctx, digest, digestLen);
#endif

    FUNC3(digestLen == 32);
}