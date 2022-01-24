#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_9__ {TYPE_3__* mac; int /*<<< orphan*/  iterationCount; TYPE_2__* salt; TYPE_1__* owf; } ;
struct TYPE_8__ {int /*<<< orphan*/ * algorithm; } ;
struct TYPE_7__ {unsigned char* data; unsigned int length; } ;
struct TYPE_6__ {int /*<<< orphan*/  algorithm; } ;
typedef  int /*<<< orphan*/  OSSL_PARAM ;
typedef  TYPE_4__ OSSL_CRMF_PBMPARAMETER ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;
typedef  int /*<<< orphan*/  EVP_MAC_CTX ;
typedef  int /*<<< orphan*/  EVP_MAC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_PBM_NEW ; 
 int /*<<< orphan*/  CRMF_R_BAD_PBM_ITERATIONCOUNT ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  CRMF_R_UNSUPPORTED_ALGORITHM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned char*,size_t*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 () ; 
 int /*<<< orphan*/  EVP_PBE_TYPE_PRF ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int NID_undef ; 
 char* FUNC18 (int) ; 
 int FUNC19 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC20 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char*) ; 
 unsigned char* FUNC23 (int) ; 
 int OSSL_CRMF_PBM_MAX_ITERATION_COUNT ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_DIGEST ; 
 int /*<<< orphan*/  OSSL_MAC_PARAM_KEY ; 
 int /*<<< orphan*/  OSSL_PARAM_END ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

int FUNC26(const OSSL_CRMF_PBMPARAMETER *pbmp,
                      const unsigned char *msg, size_t msglen,
                      const unsigned char *sec, size_t seclen,
                      unsigned char **out, size_t *outlen)
{
    int mac_nid, hmac_md_nid = NID_undef;
    const char *mdname = NULL;
    const EVP_MD *m = NULL;
    EVP_MD_CTX *ctx = NULL;
    unsigned char basekey[EVP_MAX_MD_SIZE];
    unsigned int bklen = EVP_MAX_MD_SIZE;
    int64_t iterations;
    unsigned char *mac_res = 0;
    int ok = 0;
    EVP_MAC *mac = NULL;
    EVP_MAC_CTX *mctx = NULL;
    OSSL_PARAM macparams[3] =
        { OSSL_PARAM_END, OSSL_PARAM_END, OSSL_PARAM_END };

    if (out == NULL || pbmp == NULL || pbmp->mac == NULL
            || pbmp->mac->algorithm == NULL || msg == NULL || sec == NULL) {
        FUNC1(CRMF_F_OSSL_CRMF_PBM_NEW, CRMF_R_NULL_ARGUMENT);
        goto err;
    }
    if ((mac_res = FUNC23(EVP_MAX_MD_SIZE)) == NULL)
        goto err;

    /*
     * owf identifies the hash algorithm and associated parameters used to
     * compute the key used in the MAC process.  All implementations MUST
     * support SHA-1.
     */
    if ((m = FUNC17(pbmp->owf->algorithm)) == NULL) {
        FUNC1(CRMF_F_OSSL_CRMF_PBM_NEW, CRMF_R_UNSUPPORTED_ALGORITHM);
        goto err;
    }

    if ((ctx = FUNC15()) == NULL)
        goto err;

    /* compute the basekey of the salted secret */
    if (!FUNC4(ctx, m, NULL))
        goto err;
    /* first the secret */
    if (!FUNC5(ctx, sec, seclen))
        goto err;
    /* then the salt */
    if (!FUNC5(ctx, pbmp->salt->data, pbmp->salt->length))
        goto err;
    if (!FUNC3(ctx, basekey, &bklen))
        goto err;
    if (!FUNC0(&iterations, pbmp->iterationCount)
            || iterations < 100 /* min from RFC */
            || iterations > OSSL_CRMF_PBM_MAX_ITERATION_COUNT) {
        FUNC1(CRMF_F_OSSL_CRMF_PBM_NEW, CRMF_R_BAD_PBM_ITERATIONCOUNT);
        goto err;
    }

    /* the first iteration was already done above */
    while (--iterations > 0) {
        if (!FUNC4(ctx, m, NULL))
            goto err;
        if (!FUNC5(ctx, basekey, bklen))
            goto err;
        if (!FUNC3(ctx, basekey, &bklen))
            goto err;
    }

    /*
     * mac identifies the algorithm and associated parameters of the MAC
     * function to be used.  All implementations MUST support HMAC-SHA1 [HMAC].
     * All implementations SHOULD support DES-MAC and Triple-DES-MAC [PKCS11].
     */
    mac_nid = FUNC19(pbmp->mac->algorithm);

    if (!FUNC16(EVP_PBE_TYPE_PRF, mac_nid, NULL, &hmac_md_nid, NULL)
        || ((mdname = FUNC18(hmac_md_nid)) == NULL)) {
        FUNC1(CRMF_F_OSSL_CRMF_PBM_NEW, CRMF_R_UNSUPPORTED_ALGORITHM);
        goto err;
    }

    macparams[0] =
        FUNC25(OSSL_MAC_PARAM_DIGEST,
                                         (char *)mdname, 0);
    macparams[1] =
        FUNC24(OSSL_MAC_PARAM_KEY, basekey, bklen);
    if ((mac = FUNC9(NULL, "HMAC", NULL)) == NULL
            || (mctx = FUNC7(mac)) == NULL
            || !FUNC8(mctx, macparams)
            || !FUNC12(mctx)
            || !FUNC13(mctx, msg, msglen)
            || !FUNC10(mctx, mac_res, outlen, EVP_MAX_MD_SIZE))
        goto err;

    ok = 1;

 err:
    /* cleanup */
    FUNC21(basekey, bklen);
    FUNC6(mctx);
    FUNC11(mac);
    FUNC14(ctx);

    if (ok == 1) {
        *out = mac_res;
        return 1;
    }

    FUNC22(mac_res);

    if (pbmp != NULL && pbmp->mac != NULL) {
        char buf[128];

        if (FUNC20(buf, sizeof(buf), pbmp->mac->algorithm, 0))
            FUNC2(1, buf);
    }
    return 0;
}