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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  nonce ;
typedef  int /*<<< orphan*/  hash_ctx ;
typedef  int /*<<< orphan*/  ge_p3 ;
typedef  int /*<<< orphan*/  az ;
typedef  int SHA512_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int) ; 
 int SHA512_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int*,int*,int*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

int FUNC8(uint8_t *out_sig, const uint8_t *message, size_t message_len,
                 const uint8_t public_key[32], const uint8_t private_key[32])
{
    uint8_t az[SHA512_DIGEST_LENGTH];
    uint8_t nonce[SHA512_DIGEST_LENGTH];
    ge_p3 R;
    uint8_t hram[SHA512_DIGEST_LENGTH];
    SHA512_CTX hash_ctx;

    FUNC2(&hash_ctx);
    FUNC3(&hash_ctx, private_key, 32);
    FUNC1(az, &hash_ctx);

    az[0] &= 248;
    az[31] &= 63;
    az[31] |= 64;

    FUNC2(&hash_ctx);
    FUNC3(&hash_ctx, az + 32, 32);
    FUNC3(&hash_ctx, message, message_len);
    FUNC1(nonce, &hash_ctx);

    FUNC7(nonce);
    FUNC5(&R, nonce);
    FUNC4(out_sig, &R);

    FUNC2(&hash_ctx);
    FUNC3(&hash_ctx, out_sig, 32);
    FUNC3(&hash_ctx, public_key, 32);
    FUNC3(&hash_ctx, message, message_len);
    FUNC1(hram, &hash_ctx);

    FUNC7(hram);
    FUNC6(out_sig + 32, hram, az, nonce);

    FUNC0(&hash_ctx, sizeof(hash_ctx));
    FUNC0(nonce, sizeof(nonce));
    FUNC0(az, sizeof(az));

    return 1;
}