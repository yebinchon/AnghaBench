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
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

EVP_PKEY *FUNC5(int type, ENGINE *e,
                               const unsigned char *key, int keylen)
{
    EVP_PKEY_CTX *mac_ctx = NULL;
    EVP_PKEY *mac_key = NULL;
    mac_ctx = FUNC1(type, e);
    if (!mac_ctx)
        return NULL;
    if (FUNC4(mac_ctx) <= 0)
        goto merr;
    if (FUNC2(mac_ctx, key, keylen) <= 0)
        goto merr;
    if (FUNC3(mac_ctx, &mac_key) <= 0)
        goto merr;
 merr:
    FUNC0(mac_ctx);
    return mac_key;
}