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
struct TYPE_3__ {int /*<<< orphan*/ * pubLocation; int /*<<< orphan*/  pubMethod; } ;
typedef  TYPE_1__ OSSL_CRMF_SINGLEPUBINFO ;
typedef  int /*<<< orphan*/  GENERAL_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_MSG_SET0_SINGLEPUBINFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int OSSL_CRMF_PUB_METHOD_DONTCARE ; 
 int OSSL_CRMF_PUB_METHOD_LDAP ; 

int FUNC3(OSSL_CRMF_SINGLEPUBINFO *spi,
                                     int method, GENERAL_NAME *nm)
{
    if (spi == NULL
            || method < OSSL_CRMF_PUB_METHOD_DONTCARE
            || method > OSSL_CRMF_PUB_METHOD_LDAP) {
        FUNC1(CRMF_F_OSSL_CRMF_MSG_SET0_SINGLEPUBINFO,
                ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    if (!FUNC0(spi->pubMethod, method))
        return 0;
    FUNC2(spi->pubLocation);
    spi->pubLocation = nm;
    return 1;
}