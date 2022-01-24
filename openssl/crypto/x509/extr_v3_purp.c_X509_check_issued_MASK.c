#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  algorithm; } ;
typedef  TYPE_2__ X509_ALGOR ;
struct TYPE_12__ {TYPE_2__ signature; } ;
struct TYPE_14__ {int ex_flags; TYPE_1__ cert_info; scalar_t__ akid; } ;
typedef  TYPE_3__ X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int) ; 
 int EXFLAG_PROXY ; 
 int /*<<< orphan*/  KU_DIGITAL_SIGNATURE ; 
 int /*<<< orphan*/  KU_KEY_CERT_SIGN ; 
 int NID_undef ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int X509_V_ERR_KEYUSAGE_NO_CERTSIGN ; 
 int X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE ; 
 int X509_V_ERR_NO_ISSUER_PUBLIC_KEY ; 
 int X509_V_ERR_SIGNATURE_ALGORITHM_MISMATCH ; 
 int X509_V_ERR_SUBJECT_ISSUER_MISMATCH ; 
 int X509_V_OK ; 
 int FUNC5 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 scalar_t__ FUNC9 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 

int FUNC11(X509 *issuer, X509 *subject)
{
    if (FUNC4(FUNC8(issuer),
                      FUNC7(subject)))
        return X509_V_ERR_SUBJECT_ISSUER_MISMATCH;

    FUNC10(issuer);
    FUNC10(subject);

    if (subject->akid) {
        int ret = FUNC5(issuer, subject->akid);
        if (ret != X509_V_OK)
            return ret;
    }

    {
        /*
         * Check if the subject signature algorithm matches the issuer's PUBKEY
         * algorithm
         */
        EVP_PKEY *i_pkey = FUNC6(issuer);
        X509_ALGOR *s_algor = &subject->cert_info.signature;
        int s_pknid = NID_undef, s_mdnid = NID_undef;

        if (i_pkey == NULL)
            return X509_V_ERR_NO_ISSUER_PUBLIC_KEY;

        if (!FUNC2(FUNC3(s_algor->algorithm),
                                 &s_mdnid, &s_pknid)
            || FUNC1(s_pknid) != FUNC0(i_pkey))
            return X509_V_ERR_SIGNATURE_ALGORITHM_MISMATCH;
    }

    if (subject->ex_flags & EXFLAG_PROXY) {
        if (FUNC9(issuer, KU_DIGITAL_SIGNATURE))
            return X509_V_ERR_KEYUSAGE_NO_DIGITAL_SIGNATURE;
    } else if (FUNC9(issuer, KU_KEY_CERT_SIGN))
        return X509_V_ERR_KEYUSAGE_NO_CERTSIGN;
    return X509_V_OK;
}