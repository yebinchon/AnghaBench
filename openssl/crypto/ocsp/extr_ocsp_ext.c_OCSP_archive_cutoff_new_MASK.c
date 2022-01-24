#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  X509_EXTENSION ;
typedef  int /*<<< orphan*/  ASN1_GENERALIZEDTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  NID_id_pkix_OCSP_archiveCutoff ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

X509_EXTENSION *FUNC4(char *tim)
{
    X509_EXTENSION *x = NULL;
    ASN1_GENERALIZEDTIME *gt = NULL;

    if ((gt = FUNC1()) == NULL)
        goto err;
    if (!(FUNC2(gt, tim)))
        goto err;
    x = FUNC3(NID_id_pkix_OCSP_archiveCutoff, 0, gt);
 err:
    FUNC0(gt);
    return x;
}