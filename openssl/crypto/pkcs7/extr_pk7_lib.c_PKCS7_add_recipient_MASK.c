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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  PKCS7_RECIP_INFO ;
typedef  int /*<<< orphan*/  PKCS7 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

PKCS7_RECIP_INFO *FUNC4(PKCS7 *p7, X509 *x509)
{
    PKCS7_RECIP_INFO *ri;

    if ((ri = FUNC1()) == NULL)
        goto err;
    if (!FUNC2(ri, x509))
        goto err;
    if (!FUNC3(p7, ri))
        goto err;
    return ri;
 err:
    FUNC0(ri);
    return NULL;
}