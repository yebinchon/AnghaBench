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
typedef  int /*<<< orphan*/  const uint8_t ;
typedef  int /*<<< orphan*/  hmac_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int TOKEN_DATA_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const**,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC6 (char const*) ; 

__attribute__((used)) static bool
FUNC7(hmac_ctx_t *ctx, const uint8_t *b64decoded, const char *username)
{
    FUNC0(FUNC3(ctx) == 256/8);

    uint8_t hmac_output[256/8];

    FUNC2(ctx);
    FUNC4(ctx, (uint8_t *) username, (int)FUNC6(username));
    FUNC4(ctx, b64decoded, TOKEN_DATA_LEN - 256/8);
    FUNC1(ctx, hmac_output);

    const uint8_t *hmac = b64decoded + TOKEN_DATA_LEN - 256/8;
    return FUNC5(&hmac_output, hmac, 32) == 0;
}