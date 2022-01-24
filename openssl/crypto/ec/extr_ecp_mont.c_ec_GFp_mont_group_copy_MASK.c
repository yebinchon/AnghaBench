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
struct TYPE_6__ {int /*<<< orphan*/ * field_data1; int /*<<< orphan*/ * field_data2; } ;
typedef  TYPE_1__ EC_GROUP ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__ const*) ; 

int FUNC6(EC_GROUP *dest, const EC_GROUP *src)
{
    FUNC1(dest->field_data1);
    dest->field_data1 = NULL;
    FUNC3(dest->field_data2);
    dest->field_data2 = NULL;

    if (!FUNC5(dest, src))
        return 0;

    if (src->field_data1 != NULL) {
        dest->field_data1 = FUNC2();
        if (dest->field_data1 == NULL)
            return 0;
        if (!FUNC0(dest->field_data1, src->field_data1))
            goto err;
    }
    if (src->field_data2 != NULL) {
        dest->field_data2 = FUNC4(src->field_data2);
        if (dest->field_data2 == NULL)
            goto err;
    }

    return 1;

 err:
    FUNC1(dest->field_data1);
    dest->field_data1 = NULL;
    return 0;
}