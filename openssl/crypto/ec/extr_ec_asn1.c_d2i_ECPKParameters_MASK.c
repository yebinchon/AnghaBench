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
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  int /*<<< orphan*/  ECPKPARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_F_D2I_ECPKPARAMETERS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_D2I_ECPKPARAMETERS_FAILURE ; 
 int /*<<< orphan*/  EC_R_PKPARAMETERS2GROUP_FAILURE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,unsigned char const**,long) ; 

EC_GROUP *FUNC5(EC_GROUP **a, const unsigned char **in, long len)
{
    EC_GROUP *group = NULL;
    ECPKPARAMETERS *params = NULL;
    const unsigned char *p = *in;

    if ((params = FUNC4(NULL, &p, len)) == NULL) {
        FUNC3(EC_F_D2I_ECPKPARAMETERS, EC_R_D2I_ECPKPARAMETERS_FAILURE);
        FUNC0(params);
        return NULL;
    }

    if ((group = FUNC2(params)) == NULL) {
        FUNC3(EC_F_D2I_ECPKPARAMETERS, EC_R_PKPARAMETERS2GROUP_FAILURE);
        FUNC0(params);
        return NULL;
    }

    if (a) {
        FUNC1(*a);
        *a = group;
    }

    FUNC0(params);
    *in = p;
    return group;
}