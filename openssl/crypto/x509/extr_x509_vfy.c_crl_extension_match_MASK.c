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
typedef  int /*<<< orphan*/  X509_CRL ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(X509_CRL *a, X509_CRL *b, int nid)
{
    ASN1_OCTET_STRING *exta, *extb;
    int i;
    i = FUNC2(a, nid, -1);
    if (i >= 0) {
        /* Can't have multiple occurrences */
        if (FUNC2(a, nid, i) != -1)
            return 0;
        exta = FUNC3(FUNC1(a, i));
    } else
        exta = NULL;

    i = FUNC2(b, nid, -1);

    if (i >= 0) {

        if (FUNC2(b, nid, i) != -1)
            return 0;
        extb = FUNC3(FUNC1(b, i));
    } else
        extb = NULL;

    if (!exta && !extb)
        return 1;

    if (!exta || !extb)
        return 0;

    if (FUNC0(exta, extb))
        return 0;

    return 1;
}