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
typedef  int /*<<< orphan*/  PKCS7_SIGNER_INFO ;
typedef  int /*<<< orphan*/  ESS_SIGNING_CERT ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ESS_F_ESS_SIGNING_CERT_ADD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_id_smime_aa_signingCertificate ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC8(PKCS7_SIGNER_INFO *si, ESS_SIGNING_CERT *sc)
{
    ASN1_STRING *seq = NULL;
    unsigned char *p, *pp = NULL;
    int len;

    len = FUNC7(sc, NULL);
    if ((pp = FUNC5(len)) == NULL) {
        FUNC3(ESS_F_ESS_SIGNING_CERT_ADD, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    p = pp;
    FUNC7(sc, &p);
    if ((seq = FUNC1()) == NULL || !FUNC2(seq, pp, len)) {
        FUNC3(ESS_F_ESS_SIGNING_CERT_ADD, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    FUNC4(pp);
    pp = NULL;
    return FUNC6(si,
                                      NID_id_smime_aa_signingCertificate,
                                      V_ASN1_SEQUENCE, seq);
 err:
    FUNC0(seq);
    FUNC4(pp);

    return 0;
}