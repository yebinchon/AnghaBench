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
struct TYPE_5__ {scalar_t__ type; TYPE_1__ d; } ;
typedef  TYPE_2__ CMS_SignerIdentifier ;

/* Variables and functions */
 scalar_t__ CMS_SIGNERINFO_ISSUER_SERIAL ; 
 scalar_t__ CMS_SIGNERINFO_KEYIDENTIFIER ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(CMS_SignerIdentifier *sid, X509 *cert)
{
    if (sid->type == CMS_SIGNERINFO_ISSUER_SERIAL)
        return FUNC0(sid->d.issuerAndSerialNumber, cert);
    else if (sid->type == CMS_SIGNERINFO_KEYIDENTIFIER)
        return FUNC1(sid->d.subjectKeyIdentifier, cert);
    else
        return -1;
}