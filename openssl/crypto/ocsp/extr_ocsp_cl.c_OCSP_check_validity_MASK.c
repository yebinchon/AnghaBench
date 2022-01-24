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
typedef  scalar_t__ time_t ;
typedef  int /*<<< orphan*/  ASN1_GENERALIZEDTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OCSP_F_OCSP_CHECK_VALIDITY ; 
 int /*<<< orphan*/  OCSP_R_ERROR_IN_NEXTUPDATE_FIELD ; 
 int /*<<< orphan*/  OCSP_R_ERROR_IN_THISUPDATE_FIELD ; 
 int /*<<< orphan*/  OCSP_R_NEXTUPDATE_BEFORE_THISUPDATE ; 
 int /*<<< orphan*/  OCSP_R_STATUS_EXPIRED ; 
 int /*<<< orphan*/  OCSP_R_STATUS_NOT_YET_VALID ; 
 int /*<<< orphan*/  OCSP_R_STATUS_TOO_OLD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*) ; 

int FUNC5(ASN1_GENERALIZEDTIME *thisupd,
                        ASN1_GENERALIZEDTIME *nextupd, long nsec, long maxsec)
{
    int ret = 1;
    time_t t_now, t_tmp;
    FUNC4(&t_now);
    /* Check thisUpdate is valid and not more than nsec in the future */
    if (!FUNC0(thisupd)) {
        FUNC2(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_ERROR_IN_THISUPDATE_FIELD);
        ret = 0;
    } else {
        t_tmp = t_now + nsec;
        if (FUNC3(thisupd, &t_tmp) > 0) {
            FUNC2(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_STATUS_NOT_YET_VALID);
            ret = 0;
        }

        /*
         * If maxsec specified check thisUpdate is not more than maxsec in
         * the past
         */
        if (maxsec >= 0) {
            t_tmp = t_now - maxsec;
            if (FUNC3(thisupd, &t_tmp) < 0) {
                FUNC2(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_STATUS_TOO_OLD);
                ret = 0;
            }
        }
    }

    if (!nextupd)
        return ret;

    /* Check nextUpdate is valid and not more than nsec in the past */
    if (!FUNC0(nextupd)) {
        FUNC2(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_ERROR_IN_NEXTUPDATE_FIELD);
        ret = 0;
    } else {
        t_tmp = t_now - nsec;
        if (FUNC3(nextupd, &t_tmp) < 0) {
            FUNC2(OCSP_F_OCSP_CHECK_VALIDITY, OCSP_R_STATUS_EXPIRED);
            ret = 0;
        }
    }

    /* Also don't allow nextUpdate to precede thisUpdate */
    if (FUNC1(nextupd, thisupd) < 0) {
        FUNC2(OCSP_F_OCSP_CHECK_VALIDITY,
                OCSP_R_NEXTUPDATE_BEFORE_THISUPDATE);
        ret = 0;
    }

    return ret;
}