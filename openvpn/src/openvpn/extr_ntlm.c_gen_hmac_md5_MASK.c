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
typedef  int /*<<< orphan*/  md_kt_t ;
typedef  int /*<<< orphan*/  hmac_ctx_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7(const uint8_t *data, int data_len, const uint8_t *key, int key_len,
             uint8_t *result)
{
    const md_kt_t *md5_kt = FUNC6("MD5");
    hmac_ctx_t *hmac_ctx = FUNC4();

    FUNC3(hmac_ctx, key, key_len, md5_kt);
    FUNC5(hmac_ctx, data, data_len);
    FUNC1(hmac_ctx, result);
    FUNC0(hmac_ctx);
    FUNC2(hmac_ctx);
}