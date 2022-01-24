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
typedef  int /*<<< orphan*/  OSSL_PROVIDER ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  int /*<<< orphan*/  OPENSSL_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_KDF_CTX ;
typedef  int /*<<< orphan*/  EVP_KDF ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 
 int NID_undef ; 
 char* FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSSL_KDF_NAME_X942KDF ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_CEK_ALG ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_KDF_PARAM_UKM ; 
 int /*<<< orphan*/  FUNC10 () ; 
 void* FUNC11 (int /*<<< orphan*/ ,unsigned char*,size_t) ; 
 void* FUNC12 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC14 (char const*) ; 

int FUNC15(unsigned char *out, size_t outlen,
                 const unsigned char *Z, size_t Zlen,
                 ASN1_OBJECT *key_oid,
                 const unsigned char *ukm, size_t ukmlen, const EVP_MD *md)
{
    int ret = 0, nid;
    EVP_KDF_CTX *kctx = NULL;
    EVP_KDF *kdf = NULL;
    const char *oid_sn;
    OSSL_PARAM params[5], *p = params;
    const char *mdname = FUNC6(md);
    const OSSL_PROVIDER *prov = FUNC7(md);
    OPENSSL_CTX *provctx = FUNC13(prov);

    nid = FUNC9(key_oid);
    if (nid == NID_undef)
        return 0;
    oid_sn = FUNC8(nid);
    if (oid_sn == NULL)
        return 0;

    kdf = FUNC4(provctx, OSSL_KDF_NAME_X942KDF, NULL);
    if ((kctx = FUNC1(kdf)) == NULL)
        goto err;
    *p++ = FUNC12(OSSL_KDF_PARAM_DIGEST,
                                            (char *)mdname, FUNC14(mdname) + 1);
    *p++ = FUNC11(OSSL_KDF_PARAM_KEY,
                                             (unsigned char *)Z, Zlen);
    if (ukm != NULL)
        *p++ = FUNC11(OSSL_KDF_PARAM_UKM,
                                                 (unsigned char *)ukm, ukmlen);
    *p++ = FUNC12(OSSL_KDF_PARAM_CEK_ALG,
                                            (char *)oid_sn, FUNC14(oid_sn) + 1);
    *p = FUNC10();
    ret = FUNC2(kctx, params) > 0
        && FUNC3(kctx, out, outlen) > 0;
err:
    FUNC0(kctx);
    FUNC5(kdf);
    return ret;
}