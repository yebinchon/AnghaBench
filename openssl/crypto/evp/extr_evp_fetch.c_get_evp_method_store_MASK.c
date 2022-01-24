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
 int /*<<< orphan*/  OPENSSL_CTX_EVP_METHOD_STORE_INDEX ; 
 int /*<<< orphan*/  evp_method_store_method ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static OSSL_METHOD_STORE *FUNC1(OPENSSL_CTX *libctx)
{
    return FUNC0(libctx, OPENSSL_CTX_EVP_METHOD_STORE_INDEX,
                                &evp_method_store_method);
}