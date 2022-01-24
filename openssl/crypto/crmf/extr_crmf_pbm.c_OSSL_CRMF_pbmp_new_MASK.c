#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  mac; int /*<<< orphan*/  iterationCount; int /*<<< orphan*/  owf; int /*<<< orphan*/  salt; } ;
typedef  TYPE_1__ OSSL_CRMF_PBMPARAMETER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_PBMP_NEW ; 
 int /*<<< orphan*/  CRMF_R_CRMFERROR ; 
 int /*<<< orphan*/  CRMF_R_FAILURE_OBTAINING_RANDOM ; 
 int /*<<< orphan*/  CRMF_R_ITERATIONCOUNT_BELOW_100 ; 
 int /*<<< orphan*/  CRMF_R_SETTING_MAC_ALGOR_FAILURE ; 
 int /*<<< orphan*/  CRMF_R_SETTING_OWF_ALGOR_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 TYPE_1__* FUNC7 () ; 
 scalar_t__ FUNC8 (unsigned char*,int) ; 
 int /*<<< orphan*/  V_ASN1_UNDEF ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

OSSL_CRMF_PBMPARAMETER *FUNC10(size_t slen, int owfnid,
                                           int itercnt, int macnid)
{
    OSSL_CRMF_PBMPARAMETER *pbm = NULL;
    unsigned char *salt = NULL;

    if ((pbm = FUNC7()) == NULL)
        goto err;

    /*
     * salt contains a randomly generated value used in computing the key
     * of the MAC process.  The salt SHOULD be at least 8 octets (64
     * bits) long.
     */
    if ((salt = FUNC5(slen)) == NULL)
        goto err;
    if (FUNC8(salt, (int)slen) <= 0) {
        FUNC2(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_FAILURE_OBTAINING_RANDOM);
        goto err;
    }
    if (!FUNC1(pbm->salt, salt, (int)slen))
        goto err;

    /*
     * owf identifies the hash algorithm and associated parameters used to
     * compute the key used in the MAC process.  All implementations MUST
     * support SHA-1.
     */
    if (!FUNC9(pbm->owf, FUNC3(owfnid), V_ASN1_UNDEF, NULL)) {
        FUNC2(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_SETTING_OWF_ALGOR_FAILURE);
        goto err;
    }

    /*
     * iterationCount identifies the number of times the hash is applied
     * during the key computation process.  The iterationCount MUST be a
     * minimum of 100.      Many people suggest using values as high as 1000
     * iterations as the minimum value.  The trade off here is between
     * protection of the password from attacks and the time spent by the
     * server processing all of the different iterations in deriving
     * passwords.  Hashing is generally considered a cheap operation but
     * this may not be true with all hash functions in the future.
     */
    if (itercnt < 100) {
        FUNC2(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_ITERATIONCOUNT_BELOW_100);
        goto err;
    }

    if (!FUNC0(pbm->iterationCount, itercnt)) {
        FUNC2(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_CRMFERROR);
        goto err;
    }

    /*
     * mac identifies the algorithm and associated parameters of the MAC
     * function to be used.  All implementations MUST support HMAC-SHA1 [HMAC].
     * All implementations SHOULD support DES-MAC and Triple-DES-MAC [PKCS11].
     */
    if (!FUNC9(pbm->mac, FUNC3(macnid), V_ASN1_UNDEF, NULL)) {
        FUNC2(CRMF_F_OSSL_CRMF_PBMP_NEW, CRMF_R_SETTING_MAC_ALGOR_FAILURE);
        goto err;
    }

    FUNC4(salt);
    return pbm;
 err:
    FUNC4(salt);
    FUNC6(pbm);
    return NULL;
}