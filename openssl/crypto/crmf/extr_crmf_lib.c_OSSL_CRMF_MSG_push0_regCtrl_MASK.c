#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* certReq; } ;
struct TYPE_4__ {int /*<<< orphan*/ * controls; } ;
typedef  TYPE_2__ OSSL_CRMF_MSG ;
typedef  int /*<<< orphan*/  OSSL_CRMF_ATTRIBUTETYPEANDVALUE ;

/* Variables and functions */
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_MSG_PUSH0_REGCTRL ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(OSSL_CRMF_MSG *crm,
                                       OSSL_CRMF_ATTRIBUTETYPEANDVALUE *ctrl)
{
    int new = 0;

    if (crm == NULL || crm->certReq == NULL || ctrl == NULL) {
        FUNC0(CRMF_F_OSSL_CRMF_MSG_PUSH0_REGCTRL, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (crm->certReq->controls == NULL) {
        crm->certReq->controls = FUNC2();
        if (crm->certReq->controls == NULL)
            goto err;
        new = 1;
    }
    if (!FUNC3(crm->certReq->controls, ctrl))
        goto err;

    return 1;
 err:
    if (new != 0) {
        FUNC1(crm->certReq->controls);
        crm->certReq->controls = NULL;
    }
    return 0;
}