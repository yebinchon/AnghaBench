#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  point_conversion_form_t ;
struct TYPE_6__ {long version; int /*<<< orphan*/ * cofactor; int /*<<< orphan*/ * order; int /*<<< orphan*/ * base; int /*<<< orphan*/  curve; int /*<<< orphan*/  fieldID; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;
typedef  TYPE_1__ ECPARAMETERS ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 void* FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 () ; 
 int /*<<< orphan*/  EC_F_EC_GROUP_GET_ECPARAMETERS ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/  const*) ; 
 size_t FUNC9 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EC_R_UNDEFINED_GENERATOR ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_ASN1_LIB ; 
 int /*<<< orphan*/  ERR_R_EC_LIB ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

ECPARAMETERS *FUNC14(const EC_GROUP *group,
                                               ECPARAMETERS *params)
{
    size_t len = 0;
    ECPARAMETERS *ret = NULL;
    const BIGNUM *tmp;
    unsigned char *buffer = NULL;
    const EC_POINT *point = NULL;
    point_conversion_form_t form;
    ASN1_INTEGER *orig;

    if (params == NULL) {
        if ((ret = FUNC4()) == NULL) {
            FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_MALLOC_FAILURE);
            goto err;
        }
    } else
        ret = params;

    /* set the version (always one) */
    ret->version = (long)0x1;

    /* set the fieldID */
    if (!FUNC13(group, ret->fieldID)) {
        FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }

    /* set the curve */
    if (!FUNC12(group, ret->curve)) {
        FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }

    /* set the base point */
    if ((point = FUNC6(group)) == NULL) {
        FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, EC_R_UNDEFINED_GENERATOR);
        goto err;
    }

    form = FUNC8(group);

    len = FUNC9(group, point, form, &buffer, NULL);
    if (len == 0) {
        FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }
    if (ret->base == NULL && (ret->base = FUNC0()) == NULL) {
        FUNC11(buffer);
        FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_MALLOC_FAILURE);
        goto err;
    }
    FUNC1(ret->base, buffer, len);

    /* set the order */
    tmp = FUNC7(group);
    if (tmp == NULL) {
        FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_EC_LIB);
        goto err;
    }
    ret->order = FUNC2(tmp, orig = ret->order);
    if (ret->order == NULL) {
        ret->order = orig;
        FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_ASN1_LIB);
        goto err;
    }

    /* set the cofactor (optional) */
    tmp = FUNC5(group);
    if (tmp != NULL) {
        ret->cofactor = FUNC2(tmp, orig = ret->cofactor);
        if (ret->cofactor == NULL) {
            ret->cofactor = orig;
            FUNC10(EC_F_EC_GROUP_GET_ECPARAMETERS, ERR_R_ASN1_LIB);
            goto err;
        }
    }

    return ret;

 err:
    if (params == NULL)
        FUNC3(ret);
    return NULL;
}