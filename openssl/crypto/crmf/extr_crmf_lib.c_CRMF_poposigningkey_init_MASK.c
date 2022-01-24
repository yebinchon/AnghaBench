#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {TYPE_3__* signature; int /*<<< orphan*/  algorithmIdentifier; } ;
typedef  TYPE_1__ OSSL_CRMF_POPOSIGNINGKEY ;
typedef  int /*<<< orphan*/  OSSL_CRMF_CERTREQUEST ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  EVP_MD_CTX ;
typedef  int /*<<< orphan*/  EVP_MD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,unsigned char*,size_t) ; 
 int ASN1_STRING_FLAG_BITS_LEFT ; 
 int /*<<< orphan*/  CRMF_F_CRMF_POPOSIGNINGKEY_INIT ; 
 int /*<<< orphan*/  CRMF_R_ERROR ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*) ; 
 unsigned char* FUNC13 (size_t) ; 
 int /*<<< orphan*/  V_ASN1_NULL ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC15 (int /*<<< orphan*/ *,unsigned char**) ; 

__attribute__((used)) static int FUNC16(OSSL_CRMF_POPOSIGNINGKEY *ps,
                                    OSSL_CRMF_CERTREQUEST *cr,
                                    EVP_PKEY *pkey, int dgst)
{
    int len;
    size_t crlen;
    size_t siglen;
    unsigned char *crder = NULL, *sig = NULL;
    int alg_nid = 0;
    int md_nid = 0;
    const EVP_MD *alg = NULL;
    EVP_MD_CTX *ctx = NULL;
    int ret = 0;

    if (ps == NULL || cr == NULL || pkey == NULL) {
        FUNC1(CRMF_F_CRMF_POPOSIGNINGKEY_INIT, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    /* OpenSSL defaults all bit strings to be encoded as ASN.1 NamedBitList */
    ps->signature->flags &= ~(ASN1_STRING_FLAG_BITS_LEFT | 0x07);
    ps->signature->flags |= ASN1_STRING_FLAG_BITS_LEFT;

    len = FUNC15(cr, &crder);
    if (len < 0 || crder == NULL) {
        FUNC1(CRMF_F_CRMF_POPOSIGNINGKEY_INIT, CRMF_R_ERROR);
        goto err;
    }
    crlen = (size_t)len;

    if (!FUNC10(&alg_nid, dgst, FUNC7(pkey))) {
        FUNC1(CRMF_F_CRMF_POPOSIGNINGKEY_INIT,
                CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY);
        goto err;
    }
    if (!FUNC9(alg_nid, &md_nid, NULL)
            || (alg = FUNC8(md_nid)) == NULL) {
        FUNC1(CRMF_F_CRMF_POPOSIGNINGKEY_INIT,
                CRMF_R_UNSUPPORTED_ALG_FOR_POPSIGNINGKEY);
        goto err;
    }
    if (!FUNC14(ps->algorithmIdentifier, FUNC11(alg_nid),
                         V_ASN1_NULL, NULL)
            || (ctx = FUNC6()) == NULL
            || FUNC3(ctx, NULL, alg, NULL, pkey) <= 0
            || FUNC4(ctx, crder, crlen) <= 0
            || FUNC2(ctx, NULL, &siglen) <= 0) {
        FUNC1(CRMF_F_CRMF_POPOSIGNINGKEY_INIT, CRMF_R_ERROR);
        goto err;
    }
    if ((sig = FUNC13(siglen)) == NULL)
        goto err;
    if (FUNC2(ctx, sig, &siglen) <= 0
            || !FUNC0(ps->signature, sig, siglen)) {
        FUNC1(CRMF_F_CRMF_POPOSIGNINGKEY_INIT, CRMF_R_ERROR);
        goto err;
    }
    ret = 1;

 err:
    FUNC12(crder);
    FUNC5(ctx);
    FUNC12(sig);
    return ret;
}