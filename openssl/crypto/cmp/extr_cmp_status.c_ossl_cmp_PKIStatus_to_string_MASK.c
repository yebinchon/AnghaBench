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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  CMP_R_ERROR_PARSING_PKISTATUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  OSSL_CMP_PKISTATUS_accepted 134 
#define  OSSL_CMP_PKISTATUS_grantedWithMods 133 
#define  OSSL_CMP_PKISTATUS_keyUpdateWarning 132 
#define  OSSL_CMP_PKISTATUS_rejection 131 
#define  OSSL_CMP_PKISTATUS_revocationNotification 130 
#define  OSSL_CMP_PKISTATUS_revocationWarning 129 
#define  OSSL_CMP_PKISTATUS_waiting 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 

const char *FUNC3(int status)
{
    switch (status) {
    case OSSL_CMP_PKISTATUS_accepted:
        return "PKIStatus: accepted";
    case OSSL_CMP_PKISTATUS_grantedWithMods:
        return "PKIStatus: granted with modifications";
    case OSSL_CMP_PKISTATUS_rejection:
        return "PKIStatus: rejection";
    case OSSL_CMP_PKISTATUS_waiting:
        return "PKIStatus: waiting";
    case OSSL_CMP_PKISTATUS_revocationWarning:
        return "PKIStatus: revocation warning - a revocation of the cert is imminent";
    case OSSL_CMP_PKISTATUS_revocationNotification:
        return "PKIStatus: revocation notification - a revocation of the cert has occurred";
    case OSSL_CMP_PKISTATUS_keyUpdateWarning:
        return "PKIStatus: key update warning - update already done for the cert";
    default: 
        {
            char buf[40];
            FUNC0(buf, sizeof(buf), "PKIStatus: invalid=%d", status);
            FUNC1(0, CMP_R_ERROR_PARSING_PKISTATUS);
            FUNC2(buf);
            return NULL;
        }
    }
}