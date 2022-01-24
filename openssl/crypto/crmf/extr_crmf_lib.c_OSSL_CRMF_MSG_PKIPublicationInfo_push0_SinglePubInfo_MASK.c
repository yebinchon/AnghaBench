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
struct TYPE_3__ {int /*<<< orphan*/ * pubInfos; } ;
typedef  int /*<<< orphan*/  OSSL_CRMF_SINGLEPUBINFO ;
typedef  TYPE_1__ OSSL_CRMF_PKIPUBLICATIONINFO ;

/* Variables and functions */
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_MSG_PKIPUBLICATIONINFO_PUSH0_SINGLEPUBINFO ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(
                                 OSSL_CRMF_PKIPUBLICATIONINFO *pi,
                                 OSSL_CRMF_SINGLEPUBINFO *spi)
{
    if (pi == NULL || spi == NULL) {
        FUNC0(CRMF_F_OSSL_CRMF_MSG_PKIPUBLICATIONINFO_PUSH0_SINGLEPUBINFO,
                CRMF_R_NULL_ARGUMENT);
        return 0;
    }
    if (pi->pubInfos == NULL)
        pi->pubInfos = FUNC1();
    if (pi->pubInfos == NULL)
        return 0;

    return FUNC2(pi->pubInfos, spi);
}