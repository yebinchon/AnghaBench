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
struct TYPE_4__ {int /*<<< orphan*/ * certReqId; } ;
typedef  TYPE_2__ OSSL_CRMF_MSG ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_MSG_SET_CERTREQID ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(OSSL_CRMF_MSG *crm, int rid)
{
    if (crm == NULL || crm->certReq == NULL || crm->certReq->certReqId == NULL) {
        FUNC1(CRMF_F_OSSL_CRMF_MSG_SET_CERTREQID, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    return FUNC0(crm->certReq->certReqId, rid);
}