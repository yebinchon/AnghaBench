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
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_KEYMGMT ;

/* Variables and functions */
 scalar_t__ EVP_KEYMGMT_free ; 
 scalar_t__ EVP_KEYMGMT_up_ref ; 
 int /*<<< orphan*/  OSSL_OP_KEYMGMT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int (*) (void*),void (*) (void*)) ; 
 int /*<<< orphan*/  keymgmt_from_dispatch ; 

EVP_KEYMGMT *FUNC1(OPENSSL_CTX *ctx, const char *algorithm,
                               const char *properties)
{
    return FUNC0(ctx, OSSL_OP_KEYMGMT, algorithm, properties,
                             keymgmt_from_dispatch,
                             (int (*)(void *))EVP_KEYMGMT_up_ref,
                             (void (*)(void *))EVP_KEYMGMT_free);
}