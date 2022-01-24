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
typedef  int /*<<< orphan*/  SXNET ;
typedef  int /*<<< orphan*/  ASN1_OCTET_STRING ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509V3_F_SXNET_GET_ID_ULONG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

ASN1_OCTET_STRING *FUNC5(SXNET *sx, unsigned long lzone)
{
    ASN1_INTEGER *izone;
    ASN1_OCTET_STRING *oct;

    if ((izone = FUNC1()) == NULL
        || !FUNC2(izone, lzone)) {
        FUNC4(X509V3_F_SXNET_GET_ID_ULONG, ERR_R_MALLOC_FAILURE);
        FUNC0(izone);
        return NULL;
    }
    oct = FUNC3(sx, izone);
    FUNC0(izone);
    return oct;
}