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
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_X963KDF ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_INFO ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC10 (char const*) ; 

int FUNC11(unsigned char *out, size_t outlen,
                   const unsigned char *Z, size_t Zlen,
                   const unsigned char *sinfo, size_t sinfolen,
                   const EVP_MD *md)
{
    int ret = 0;
    EVP_KDF_CTX *kctx = NULL;
    OSSL_PARAM params[4], *p = params;
    const char *mdname = FUNC6(md);
    EVP_KDF *kdf = FUNC4(NULL, OSSL_KDF_NAME_X963KDF, NULL);

    if ((kctx = FUNC1(kdf)) != NULL) {
        *p++ = FUNC9(OSSL_KDF_PARAM_DIGEST,
                                                (char *)mdname,
                                                FUNC10(mdname) + 1);
        *p++ = FUNC8(OSSL_KDF_PARAM_KEY,
                                                 (void *)Z, Zlen);
        *p++ = FUNC8(OSSL_KDF_PARAM_INFO,
                                                 (void *)sinfo, sinfolen);
        *p = FUNC7();

        ret = FUNC2(kctx, params) > 0
            && FUNC3(kctx, out, outlen) > 0;
        FUNC0(kctx);
    }
    FUNC5(kdf);
    return ret;
}