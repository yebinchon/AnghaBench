#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  curve_name; TYPE_1__* meth; } ;
struct TYPE_10__ {TYPE_1__* meth; int /*<<< orphan*/  curve_name; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* point_init ) (TYPE_2__*) ;} ;
typedef  TYPE_2__ EC_POINT ;
typedef  TYPE_3__ EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  EC_F_EC_POINT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_MALLOC_FAILURE ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

EC_POINT *FUNC4(const EC_GROUP *group)
{
    EC_POINT *ret;

    if (group == NULL) {
        FUNC0(EC_F_EC_POINT_NEW, ERR_R_PASSED_NULL_PARAMETER);
        return NULL;
    }
    if (group->meth->point_init == NULL) {
        FUNC0(EC_F_EC_POINT_NEW, ERR_R_SHOULD_NOT_HAVE_BEEN_CALLED);
        return NULL;
    }

    ret = FUNC2(sizeof(*ret));
    if (ret == NULL) {
        FUNC0(EC_F_EC_POINT_NEW, ERR_R_MALLOC_FAILURE);
        return NULL;
    }

    ret->meth = group->meth;
    ret->curve_name = group->curve_name;

    if (!ret->meth->point_init(ret)) {
        FUNC1(ret);
        return NULL;
    }

    return ret;
}