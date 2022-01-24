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
struct TYPE_3__ {int dwConfidence; scalar_t__ dwRevokedReason; } ;
typedef  int /*<<< orphan*/  HWND ;
typedef  TYPE_1__ CRYPT_PROVIDER_CERT ;

/* Variables and functions */
 int CERT_CONFIDENCE_SIG ; 
 int CERT_CONFIDENCE_TIME ; 
 int CERT_CONFIDENCE_TIMENEST ; 
 int /*<<< orphan*/  EM_SETSEL ; 
 int /*<<< orphan*/  IDS_CERTIFICATE_BAD_SIGNATURE ; 
 int /*<<< orphan*/  IDS_CERTIFICATE_BAD_TIME ; 
 int /*<<< orphan*/  IDS_CERTIFICATE_BAD_TIMENEST ; 
 int /*<<< orphan*/  IDS_CERTIFICATE_REVOKED ; 
 int /*<<< orphan*/  IDS_CERTIFICATE_VALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(HWND hwnd, const CRYPT_PROVIDER_CERT *cert)
{
    /* Select all the text in the control, the next update will replace it */
    FUNC0(hwnd, EM_SETSEL, 0, -1);
    /* Set the highest priority error messages first. */
    if (!(cert->dwConfidence & CERT_CONFIDENCE_SIG))
        FUNC1(hwnd, IDS_CERTIFICATE_BAD_SIGNATURE);
    else if (!(cert->dwConfidence & CERT_CONFIDENCE_TIME))
        FUNC1(hwnd, IDS_CERTIFICATE_BAD_TIME);
    else if (!(cert->dwConfidence & CERT_CONFIDENCE_TIMENEST))
        FUNC1(hwnd, IDS_CERTIFICATE_BAD_TIMENEST);
    else if (cert->dwRevokedReason)
        FUNC1(hwnd, IDS_CERTIFICATE_REVOKED);
    else
        FUNC1(hwnd, IDS_CERTIFICATE_VALID);
}