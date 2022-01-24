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
struct TYPE_3__ {int /*<<< orphan*/ * serialNumber; } ;
typedef  TYPE_1__ OSSL_CRMF_CERTID ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */

ASN1_INTEGER *FUNC0(const OSSL_CRMF_CERTID *cid)
{
    return cid != NULL ? cid->serialNumber : NULL;
}