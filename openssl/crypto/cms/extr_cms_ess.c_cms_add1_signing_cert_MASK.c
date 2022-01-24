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
typedef  int /*<<< orphan*/  ESS_SIGNING_CERT ;
typedef  int /*<<< orphan*/  CMS_SignerInfo ;
typedef  int /*<<< orphan*/  ASN1_STRING ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  CMS_F_CMS_ADD1_SIGNING_CERT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  NID_id_smime_aa_signingCertificate ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 unsigned char* FUNC6 (int) ; 
 int /*<<< orphan*/  V_ASN1_SEQUENCE ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC8(CMS_SignerInfo *si, ESS_SIGNING_CERT *sc)
{
    ASN1_STRING *seq = NULL;
    unsigned char *p, *pp;
    int len;

    /* Add SigningCertificate signed attribute to the signer info. */
    len = FUNC7(sc, NULL);
    if ((pp = FUNC6(len)) == NULL)
        goto err;
    p = pp;
    FUNC7(sc, &p);
    if (!(seq = FUNC1()) || !FUNC2(seq, pp, len))
        goto err;
    FUNC5(pp);
    pp = NULL;
    if (!FUNC3(si, NID_id_smime_aa_signingCertificate,
                                     V_ASN1_SEQUENCE, seq, -1))
        goto err;
    FUNC0(seq);
    return 1;
 err:
    FUNC4(CMS_F_CMS_ADD1_SIGNING_CERT, ERR_R_MALLOC_FAILURE);
    FUNC0(seq);
    FUNC5(pp);
    return 0;
}