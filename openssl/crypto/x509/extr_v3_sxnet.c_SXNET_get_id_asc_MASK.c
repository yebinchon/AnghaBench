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
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  X509V3_F_SXNET_GET_ID_ASC ; 
 int /*<<< orphan*/  X509V3_R_ERROR_CONVERTING_ZONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*) ; 

ASN1_OCTET_STRING *FUNC4(SXNET *sx, const char *zone)
{
    ASN1_INTEGER *izone;
    ASN1_OCTET_STRING *oct;

    if ((izone = FUNC3(NULL, zone)) == NULL) {
        FUNC2(X509V3_F_SXNET_GET_ID_ASC, X509V3_R_ERROR_CONVERTING_ZONE);
        return NULL;
    }
    oct = FUNC1(sx, izone);
    FUNC0(izone);
    return oct;
}