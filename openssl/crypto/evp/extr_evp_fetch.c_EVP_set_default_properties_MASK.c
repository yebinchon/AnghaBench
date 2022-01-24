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
typedef  int /*<<< orphan*/  OSSL_METHOD_STORE ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_R_INTERNAL_ERROR ; 
 int /*<<< orphan*/  EVP_F_EVP_SET_DEFAULT_PROPERTIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 

int FUNC3(OPENSSL_CTX *libctx, const char *propq)
{
    OSSL_METHOD_STORE *store = FUNC1(libctx);

    if (store != NULL)
        return FUNC2(store, propq);
    FUNC0(EVP_F_EVP_SET_DEFAULT_PROPERTIES, ERR_R_INTERNAL_ERROR);
    return 0;
}