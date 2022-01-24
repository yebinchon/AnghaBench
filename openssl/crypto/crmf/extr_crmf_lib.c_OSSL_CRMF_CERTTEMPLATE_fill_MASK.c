#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_3__ {int /*<<< orphan*/  publicKey; int /*<<< orphan*/ * serialNumber; int /*<<< orphan*/  issuer; int /*<<< orphan*/  subject; } ;
typedef  TYPE_1__ OSSL_CRMF_CERTTEMPLATE ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_CERTTEMPLATE_FILL ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(OSSL_CRMF_CERTTEMPLATE *tmpl,
                                EVP_PKEY *pubkey,
                                const X509_NAME *subject,
                                const X509_NAME *issuer,
                                const ASN1_INTEGER *serial)
{
    if (tmpl == NULL) {
        FUNC2(CRMF_F_OSSL_CRMF_CERTTEMPLATE_FILL, CRMF_R_NULL_ARGUMENT);
        return 0;
    }
    if (subject != NULL && !FUNC3(&tmpl->subject, subject))
        return 0;
    if (issuer != NULL && !FUNC3(&tmpl->issuer, issuer))
        return 0;
    if (serial != NULL) {
        FUNC1(tmpl->serialNumber);
        if ((tmpl->serialNumber = FUNC0(serial)) == NULL)
            return 0;
    }
    if (pubkey != NULL && !FUNC4(&tmpl->publicKey, pubkey))
        return 0;
    return 1;
}