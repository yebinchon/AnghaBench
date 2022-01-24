#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  parameters; int /*<<< orphan*/  named_curve; } ;
struct TYPE_5__ {int type; TYPE_1__ value; } ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_2__ ECPKPARAMETERS ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS ; 
 int /*<<< orphan*/ * FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_R_ASN1_ERROR ; 
 int /*<<< orphan*/  EC_R_EC_GROUP_NEW_BY_NAME_FAILURE ; 
 int /*<<< orphan*/  EC_R_MISSING_PARAMETERS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OPENSSL_EC_EXPLICIT_CURVE ; 
 int /*<<< orphan*/  OPENSSL_EC_NAMED_CURVE ; 

EC_GROUP *FUNC5(const ECPKPARAMETERS *params)
{
    EC_GROUP *ret = NULL;
    int tmp = 0;

    if (params == NULL) {
        FUNC3(EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, EC_R_MISSING_PARAMETERS);
        return NULL;
    }

    if (params->type == 0) {    /* the curve is given by an OID */
        tmp = FUNC4(params->value.named_curve);
        if ((ret = FUNC0(tmp)) == NULL) {
            FUNC3(EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS,
                  EC_R_EC_GROUP_NEW_BY_NAME_FAILURE);
            return NULL;
        }
        FUNC2(ret, OPENSSL_EC_NAMED_CURVE);
    } else if (params->type == 1) { /* the parameters are given by a
                                     * ECPARAMETERS structure */
        ret = FUNC1(params->value.parameters);
        if (!ret) {
            FUNC3(EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, ERR_R_EC_LIB);
            return NULL;
        }
        FUNC2(ret, OPENSSL_EC_EXPLICIT_CURVE);
    } else if (params->type == 2) { /* implicitlyCA */
        return NULL;
    } else {
        FUNC3(EC_F_EC_GROUP_NEW_FROM_ECPKPARAMETERS, EC_R_ASN1_ERROR);
        return NULL;
    }

    return ret;
}