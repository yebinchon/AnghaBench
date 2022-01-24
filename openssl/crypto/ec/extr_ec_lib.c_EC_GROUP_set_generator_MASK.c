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
struct TYPE_6__ {int /*<<< orphan*/ * mont_data; int /*<<< orphan*/  order; int /*<<< orphan*/  cofactor; int /*<<< orphan*/ * generator; int /*<<< orphan*/  const* field; } ;
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  TYPE_1__ EC_GROUP ;
typedef  int /*<<< orphan*/  BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EC_F_EC_GROUP_SET_GENERATOR ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  EC_R_INVALID_FIELD ; 
 int /*<<< orphan*/  EC_R_INVALID_GROUP_ORDER ; 
 int /*<<< orphan*/  EC_R_UNKNOWN_COFACTOR ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_PASSED_NULL_PARAMETER ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int FUNC11 (TYPE_1__*) ; 

int FUNC12(EC_GROUP *group, const EC_POINT *generator,
                           const BIGNUM *order, const BIGNUM *cofactor)
{
    if (generator == NULL) {
        FUNC9(EC_F_EC_GROUP_SET_GENERATOR, ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }

    /* require group->field >= 1 */
    if (group->field == NULL || FUNC4(group->field)
        || FUNC2(group->field)) {
        FUNC9(EC_F_EC_GROUP_SET_GENERATOR, EC_R_INVALID_FIELD);
        return 0;
    }

    /*-
     * - require order >= 1
     * - enforce upper bound due to Hasse thm: order can be no more than one bit
     *   longer than field cardinality
     */
    if (order == NULL || FUNC4(order) || FUNC2(order)
        || FUNC5(order) > FUNC5(group->field) + 1) {
        FUNC9(EC_F_EC_GROUP_SET_GENERATOR, EC_R_INVALID_GROUP_ORDER);
        return 0;
    }

    /*-
     * Unfortunately the cofactor is an optional field in many standards.
     * Internally, the lib uses 0 cofactor as a marker for "unknown cofactor".
     * So accept cofactor == NULL or cofactor >= 0.
     */
    if (cofactor != NULL && FUNC2(cofactor)) {
        FUNC9(EC_F_EC_GROUP_SET_GENERATOR, EC_R_UNKNOWN_COFACTOR);
        return 0;
    }

    if (group->generator == NULL) {
        group->generator = FUNC8(group);
        if (group->generator == NULL)
            return 0;
    }
    if (!FUNC7(group->generator, generator))
        return 0;

    if (!FUNC1(group->order, order))
        return 0;

    /* Either take the provided positive cofactor, or try to compute it */
    if (cofactor != NULL && !FUNC4(cofactor)) {
        if (!FUNC1(group->cofactor, cofactor))
            return 0;
    } else if (!FUNC10(group)) {
        FUNC6(group->cofactor);
        return 0;
    }

    /*
     * Some groups have an order with
     * factors of two, which makes the Montgomery setup fail.
     * |group->mont_data| will be NULL in this case.
     */
    if (FUNC3(group->order)) {
        return FUNC11(group);
    }

    FUNC0(group->mont_data);
    group->mont_data = NULL;
    return 1;
}