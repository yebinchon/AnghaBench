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
typedef  int RD_BOOL ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CERT_STORE_SIGNATURE_FLAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 

RD_BOOL FUNC3(PCCERT_CONTEXT server_cert, PCCERT_CONTEXT cacert)
{
    /* FIXME should we check for expired certificates??? */
    DWORD dwFlags = CERT_STORE_SIGNATURE_FLAG; /* CERT_STORE_TIME_VALIDITY_FLAG */
    BOOL ret = FUNC0(server_cert,
                                                   cacert,
                                                   &dwFlags);
    if (!ret)
    {
        FUNC2("CertVerifySubjectCertificateContext call failed with %lx\n", FUNC1());
    }
    if (dwFlags)
    {
        FUNC2("CertVerifySubjectCertificateContext check failed %lx\n", dwFlags);
    }
    return (dwFlags == 0);
}