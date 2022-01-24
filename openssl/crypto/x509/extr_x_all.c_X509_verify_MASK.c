#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_6__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  signature; } ;
struct TYPE_8__ {int /*<<< orphan*/  algorithm; } ;
struct TYPE_7__ {TYPE_6__ cert_info; int /*<<< orphan*/  signature; TYPE_4__ sig_alg; } ;
typedef  TYPE_1__ X509 ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ *,TYPE_6__*,int /*<<< orphan*/ *) ; 
 int NID_sm2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509_CINF ; 
 int /*<<< orphan*/  X509_F_X509_VERIFY ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

int FUNC7(X509 *a, EVP_PKEY *r)
{
#ifndef OPENSSL_NO_SM2
    int mdnid, pknid;
#endif

    if (FUNC4(&a->sig_alg, &a->cert_info.signature))
        return 0;

#ifndef OPENSSL_NO_SM2
    /* Convert signature OID into digest and public key OIDs */
    if (!FUNC2(FUNC3(a->sig_alg.algorithm),
                             &mdnid, &pknid)) {
        FUNC5(X509_F_X509_VERIFY, ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM);
        return 0;
    }

    if (pknid == NID_sm2)
        return FUNC6(a, r, mdnid, pknid);
#endif

    return (FUNC1(FUNC0(X509_CINF), &a->sig_alg,
                             &a->signature, &a->cert_info, r));
}