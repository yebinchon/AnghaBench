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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  X509V3_F_SXNET_ADD_ID_ULONG ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(SXNET **psx, unsigned long lzone, const char *user,
                       int userlen)
{
    ASN1_INTEGER *izone;

    if ((izone = FUNC1()) == NULL
        || !FUNC2(izone, lzone)) {
        FUNC4(X509V3_F_SXNET_ADD_ID_ULONG, ERR_R_MALLOC_FAILURE);
        FUNC0(izone);
        return 0;
    }
    return FUNC3(psx, izone, user, userlen);

}