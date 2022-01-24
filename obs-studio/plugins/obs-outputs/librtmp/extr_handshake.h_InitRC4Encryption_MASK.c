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
typedef  int /*<<< orphan*/  RC4_handle ;
typedef  int /*<<< orphan*/  HMAC_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RTMP_LOGDEBUG ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int SHA256_DIGEST_LENGTH ; 

__attribute__((used)) static void FUNC7
(uint8_t * secretKey,
 uint8_t * pubKeyIn,
 uint8_t * pubKeyOut, RC4_handle *rc4keyIn, RC4_handle *rc4keyOut)
{
    uint8_t digest[SHA256_DIGEST_LENGTH];
#if !(defined(USE_MBEDTLS) || defined(USE_POLARSSL) || defined(USE_GNUTLS))
    unsigned int digestLen = 0;
#endif
    HMAC_CTX ctx;

    FUNC3(rc4keyIn);
    FUNC3(rc4keyOut);

    FUNC2(ctx, secretKey, 128);
    FUNC0(ctx, pubKeyIn, 128);
#if defined(USE_MBEDTLS) || defined(USE_POLARSSL) || defined(USE_GNUTLS)
    HMAC_finish(ctx, digest);
#else
    FUNC1(ctx, digest, digestLen);
#endif

    FUNC5(RTMP_LOGDEBUG, "RC4 Out Key: ");
    FUNC6(RTMP_LOGDEBUG, digest, 16);

    FUNC4(*rc4keyOut, 16, digest);

    FUNC2(ctx, secretKey, 128);
    FUNC0(ctx, pubKeyOut, 128);
#if defined(USE_MBEDTLS) || defined(USE_POLARSSL) || defined(USE_GNUTLS)
    HMAC_finish(ctx, digest);
#else
    FUNC1(ctx, digest, digestLen);
#endif

    FUNC5(RTMP_LOGDEBUG, "RC4 In Key: ");
    FUNC6(RTMP_LOGDEBUG, digest, 16);

    FUNC4(*rc4keyIn, 16, digest);
}