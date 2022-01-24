#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * ptr; } ;
struct TYPE_8__ {TYPE_1__ pkey; } ;
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  TYPE_2__ EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MAC_CTX ;
typedef  int /*<<< orphan*/  EVP_MAC ;
typedef  int /*<<< orphan*/  EVP_CIPHER ;
typedef  int /*<<< orphan*/  ENGINE ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  EVP_F_EVP_PKEY_NEW_CMAC_KEY ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EVP_PKEY_CMAC ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 TYPE_2__* FUNC9 () ; 
 int /*<<< orphan*/  EVP_R_KEY_SETUP_FAILED ; 
 int /*<<< orphan*/  EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_MAC_NAME_CMAC ; 
 char* OSSL_MAC_PARAM_CIPHER ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

EVP_PKEY *FUNC16(ENGINE *e, const unsigned char *priv,
                                size_t len, const EVP_CIPHER *cipher)
{
#ifndef OPENSSL_NO_CMAC
# ifndef OPENSSL_NO_ENGINE
    const char *engine_id = e != NULL ? FUNC0(e) : NULL;
# endif
    const char *cipher_name = FUNC1(cipher);
    const OSSL_PROVIDER *prov = FUNC2(cipher);
    OPENSSL_CTX *libctx =
        prov == NULL ? NULL : FUNC14(prov);
    EVP_PKEY *ret = FUNC9();
    EVP_MAC *cmac = FUNC6(libctx, OSSL_MAC_NAME_CMAC, NULL);
    EVP_MAC_CTX *cmctx = cmac != NULL ? FUNC4(cmac) : NULL;
    OSSL_PARAM params[4];
    size_t paramsn = 0;

    if (ret == NULL
            || cmctx == NULL
            || !FUNC15(ret, e, EVP_PKEY_CMAC, NULL, -1)) {
        /* EVPerr already called */
        goto err;
    }

# ifndef OPENSSL_NO_ENGINE
    if (engine_id != NULL)
        params[paramsn++] =
            FUNC13("engine", (char *)engine_id, 0);
# endif

    params[paramsn++] =
        FUNC13(OSSL_MAC_PARAM_CIPHER,
                                         (char *)cipher_name, 0);
    params[paramsn++] =
        FUNC12(OSSL_MAC_PARAM_KEY,
                                          (char *)priv, len);
    params[paramsn] = FUNC11();

    if (!FUNC5(cmctx, params)) {
        FUNC10(EVP_F_EVP_PKEY_NEW_CMAC_KEY, EVP_R_KEY_SETUP_FAILED);
        goto err;
    }

    ret->pkey.ptr = cmctx;
    return ret;

 err:
    FUNC8(ret);
    FUNC3(cmctx);
    FUNC7(cmac);
    return NULL;
#else
    EVPerr(EVP_F_EVP_PKEY_NEW_CMAC_KEY,
           EVP_R_OPERATION_NOT_SUPPORTED_FOR_THIS_KEYTYPE);
    return NULL;
#endif
}