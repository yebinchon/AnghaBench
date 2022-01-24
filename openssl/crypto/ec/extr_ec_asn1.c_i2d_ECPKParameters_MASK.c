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
 int /*<<< orphan*/  EC_F_I2D_ECPKPARAMETERS ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_GROUP2PKPARAMETERS_FAILURE ; 
 int /*<<< orphan*/  EC_R_I2D_ECPKPARAMETERS_FAILURE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char**) ; 

int FUNC4(const EC_GROUP *a, unsigned char **out)
{
    int ret = 0;
    ECPKPARAMETERS *tmp = FUNC1(a, NULL);
    if (tmp == NULL) {
        FUNC2(EC_F_I2D_ECPKPARAMETERS, EC_R_GROUP2PKPARAMETERS_FAILURE);
        return 0;
    }
    if ((ret = FUNC3(tmp, out)) == 0) {
        FUNC2(EC_F_I2D_ECPKPARAMETERS, EC_R_I2D_ECPKPARAMETERS_FAILURE);
        FUNC0(tmp);
        return 0;
    }
    FUNC0(tmp);
    return ret;
}