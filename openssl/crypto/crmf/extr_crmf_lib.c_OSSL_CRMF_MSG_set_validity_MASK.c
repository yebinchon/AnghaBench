#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_6__ {TYPE_1__* validity; } ;
struct TYPE_5__ {int /*<<< orphan*/ * notAfter; int /*<<< orphan*/ * notBefore; } ;
typedef  TYPE_1__ OSSL_CRMF_OPTIONALVALIDITY ;
typedef  int /*<<< orphan*/  OSSL_CRMF_MSG ;
typedef  TYPE_2__ OSSL_CRMF_CERTTEMPLATE ;
typedef  int /*<<< orphan*/  ASN1_TIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_MSG_SET_VALIDITY ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 () ; 

int FUNC5(OSSL_CRMF_MSG *crm, time_t from, time_t to)
{
    OSSL_CRMF_OPTIONALVALIDITY *vld = NULL;
    ASN1_TIME *from_asn = NULL;
    ASN1_TIME *to_asn = NULL;
    OSSL_CRMF_CERTTEMPLATE *tmpl = FUNC3(crm);

    if (tmpl == NULL) { /* also crm == NULL implies this */
        FUNC2(CRMF_F_OSSL_CRMF_MSG_SET_VALIDITY, CRMF_R_NULL_ARGUMENT);
        return 0;
    }

    if (from != 0 && ((from_asn = FUNC1(NULL, from)) == NULL))
        goto err;
    if (to != 0 && ((to_asn = FUNC1(NULL, to)) == NULL))
        goto err;
    if ((vld = FUNC4()) == NULL)
        goto err;

    vld->notBefore = from_asn;
    vld->notAfter = to_asn;

    tmpl->validity = vld;

    return 1;
 err:
    FUNC0(from_asn);
    FUNC0(to_asn);
    return 0;
}