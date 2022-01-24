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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_4__ {int /*<<< orphan*/  subjectKeyIdentifier; int /*<<< orphan*/  issuerAndSerialNumber; } ;
struct TYPE_5__ {int type; TYPE_1__ d; } ;
typedef  TYPE_2__ CMS_SignerIdentifier ;

/* Variables and functions */
 int /*<<< orphan*/  CMS_F_CMS_SET1_SIGNERIDENTIFIER ; 
 int /*<<< orphan*/  CMS_R_UNKNOWN_ID ; 
#define  CMS_SIGNERINFO_ISSUER_SERIAL 129 
#define  CMS_SIGNERINFO_KEYIDENTIFIER 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(CMS_SignerIdentifier *sid, X509 *cert, int type)
{
    switch (type) {
    case CMS_SIGNERINFO_ISSUER_SERIAL:
        if (!FUNC1(&sid->d.issuerAndSerialNumber, cert))
            return 0;
        break;

    case CMS_SIGNERINFO_KEYIDENTIFIER:
        if (!FUNC2(&sid->d.subjectKeyIdentifier, cert))
            return 0;
        break;

    default:
        FUNC0(CMS_F_CMS_SET1_SIGNERIDENTIFIER, CMS_R_UNKNOWN_ID);
        return 0;
    }

    sid->type = type;

    return 1;
}