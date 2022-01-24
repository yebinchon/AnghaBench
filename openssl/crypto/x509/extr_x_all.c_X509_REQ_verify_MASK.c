#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  algorithm; } ;
struct TYPE_5__ {int /*<<< orphan*/  req_info; int /*<<< orphan*/  signature; TYPE_4__ sig_alg; } ;
typedef  TYPE_1__ X509_REQ ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int NID_sm2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X509_F_X509_REQ_VERIFY ; 
 int /*<<< orphan*/  X509_REQ_INFO ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

int FUNC6(X509_REQ *a, EVP_PKEY *r)
{
#ifndef OPENSSL_NO_SM2
    int mdnid, pknid;

    /* Convert signature OID into digest and public key OIDs */
    if (!FUNC2(FUNC3(a->sig_alg.algorithm),
                             &mdnid, &pknid)) {
        FUNC4(X509_F_X509_REQ_VERIFY, ASN1_R_UNKNOWN_SIGNATURE_ALGORITHM);
        return 0;
    }

    if (pknid == NID_sm2)
        return FUNC5(a, r, mdnid, pknid);
#endif

    return (FUNC1(FUNC0(X509_REQ_INFO),
                             &a->sig_alg, a->signature, &a->req_info, r));
}