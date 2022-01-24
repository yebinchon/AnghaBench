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
typedef  int /*<<< orphan*/  EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/  OSSL_OP_KDF ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  evp_kdf_free ; 
 int /*<<< orphan*/  evp_kdf_from_dispatch ; 
 int /*<<< orphan*/  evp_kdf_up_ref ; 

EVP_KDF *FUNC1(OPENSSL_CTX *libctx, const char *algorithm,
                       const char *properties)
{
    return FUNC0(libctx, OSSL_OP_KDF, algorithm, properties,
                             evp_kdf_from_dispatch, evp_kdf_up_ref,
                             evp_kdf_free);
}