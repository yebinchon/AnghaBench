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
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  X509V3_F_SXNET_ADD_ID_ASC ; 
 int /*<<< orphan*/  X509V3_R_ERROR_CONVERTING_ZONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char const*) ; 

int FUNC3(SXNET **psx, const char *zone, const char *user, int userlen)
{
    ASN1_INTEGER *izone;

    if ((izone = FUNC2(NULL, zone)) == NULL) {
        FUNC1(X509V3_F_SXNET_ADD_ID_ASC, X509V3_R_ERROR_CONVERTING_ZONE);
        return 0;
    }
    return FUNC0(psx, izone, user, userlen);
}