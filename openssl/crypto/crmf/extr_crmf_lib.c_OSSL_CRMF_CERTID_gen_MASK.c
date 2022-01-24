#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_9__ {int /*<<< orphan*/ * serialNumber; TYPE_2__* issuer; } ;
struct TYPE_7__ {int /*<<< orphan*/  directoryName; } ;
struct TYPE_8__ {int /*<<< orphan*/  type; TYPE_1__ d; } ;
typedef  TYPE_3__ OSSL_CRMF_CERTID ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CRMF_F_OSSL_CRMF_CERTID_GEN ; 
 int /*<<< orphan*/  CRMF_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GEN_DIRNAME ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 TYPE_3__* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

OSSL_CRMF_CERTID *FUNC6(const X509_NAME *issuer,
                                       const ASN1_INTEGER *serial)
{
    OSSL_CRMF_CERTID *cid = NULL;

    if (issuer == NULL || serial == NULL) {
        FUNC2(CRMF_F_OSSL_CRMF_CERTID_GEN, CRMF_R_NULL_ARGUMENT);
        return NULL;
    }

    if ((cid = FUNC4()) == NULL)
        goto err;

    if (!FUNC5(&cid->issuer->d.directoryName, issuer))
        goto err;
    cid->issuer->type = GEN_DIRNAME;

    FUNC1(cid->serialNumber);
    if ((cid->serialNumber = FUNC0(serial)) == NULL)
        goto err;

    return cid;

 err:
    FUNC3(cid);
    return NULL;
}