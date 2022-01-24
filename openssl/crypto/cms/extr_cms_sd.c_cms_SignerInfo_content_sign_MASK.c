#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  signature; int /*<<< orphan*/  pkey; int /*<<< orphan*/ * pctx; int /*<<< orphan*/  digestAlgorithm; } ;
typedef  int /*<<< orphan*/  EVP_PKEY_CTX ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  TYPE_1__ CMS_SignerInfo ;
typedef  int /*<<< orphan*/  CMS_ContentInfo ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  CMS_F_CMS_SIGNERINFO_CONTENT_SIGN ; 
 int /*<<< orphan*/  CMS_R_NO_PRIVATE_KEY ; 
 int /*<<< orphan*/  CMS_R_SIGNFINAL_ERROR ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,unsigned int*) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,unsigned char*,size_t*,unsigned char*,unsigned int) ; 
 size_t FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned char*,unsigned int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_pkcs9_messageDigest ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 unsigned char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  V_ASN1_OCTET_STRING ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC17(CMS_ContentInfo *cms,
                                       CMS_SignerInfo *si, BIO *chain)
{
    EVP_MD_CTX *mctx = FUNC7();
    int r = 0;
    EVP_PKEY_CTX *pctx = NULL;

    if (mctx == NULL) {
        FUNC4(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, ERR_R_MALLOC_FAILURE);
        return 0;
    }

    if (!si->pkey) {
        FUNC4(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, CMS_R_NO_PRIVATE_KEY);
        goto err;
    }

    if (!FUNC14(mctx, chain, si->digestAlgorithm))
        goto err;
    /* Set SignerInfo algorithm details if we used custom parameter */
    if (si->pctx && !FUNC15(si, 0))
        goto err;

    /*
     * If any signed attributes calculate and add messageDigest attribute
     */

    if (FUNC3(si) >= 0) {
        unsigned char md[EVP_MAX_MD_SIZE];
        unsigned int mdlen;
        if (!FUNC5(mctx, md, &mdlen))
            goto err;
        if (!FUNC2(si, NID_pkcs9_messageDigest,
                                         V_ASN1_OCTET_STRING, md, mdlen))
            goto err;
        /* Copy content type across */
        if (!FUNC16(cms, si))
            goto err;

        if (!FUNC1(si))
            goto err;
    } else if (si->pctx) {
        unsigned char *sig;
        size_t siglen;
        unsigned char md[EVP_MAX_MD_SIZE];
        unsigned int mdlen;
        pctx = si->pctx;
        if (!FUNC5(mctx, md, &mdlen))
            goto err;
        siglen = FUNC10(si->pkey);
        sig = FUNC13(siglen);
        if (sig == NULL) {
            FUNC4(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (FUNC9(pctx, sig, &siglen, md, mdlen) <= 0) {
            FUNC12(sig);
            goto err;
        }
        FUNC0(si->signature, sig, siglen);
    } else {
        unsigned char *sig;
        unsigned int siglen;
        sig = FUNC13(FUNC10(si->pkey));
        if (sig == NULL) {
            FUNC4(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, ERR_R_MALLOC_FAILURE);
            goto err;
        }
        if (!FUNC11(mctx, sig, &siglen, si->pkey)) {
            FUNC4(CMS_F_CMS_SIGNERINFO_CONTENT_SIGN, CMS_R_SIGNFINAL_ERROR);
            FUNC12(sig);
            goto err;
        }
        FUNC0(si->signature, sig, siglen);
    }

    r = 1;

 err:
    FUNC6(mctx);
    FUNC8(pctx);
    return r;

}