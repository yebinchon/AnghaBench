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
struct TYPE_3__ {int /*<<< orphan*/  action; } ;
typedef  TYPE_1__ OSSL_CRMF_PKIPUBLICATIONINFO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_MSG_SET_PKIPUBLICATIONINFO_ACTION ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_INVALID_ARGUMENT ; 
 int OSSL_CRMF_PUB_ACTION_DONTPUBLISH ; 
 int OSSL_CRMF_PUB_ACTION_PLEASEPUBLISH ; 

int FUNC2(
                                 OSSL_CRMF_PKIPUBLICATIONINFO *pi, int action)
{
    if (pi == NULL
            || action < OSSL_CRMF_PUB_ACTION_DONTPUBLISH
            || action > OSSL_CRMF_PUB_ACTION_PLEASEPUBLISH) {
        FUNC1(CRMF_F_OSSL_CRMF_MSG_SET_PKIPUBLICATIONINFO_ACTION,
                ERR_R_PASSED_INVALID_ARGUMENT);
        return 0;
    }

    return FUNC0(pi->action, action);
}