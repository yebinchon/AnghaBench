#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* poly; int /*<<< orphan*/  b; int /*<<< orphan*/  a; int /*<<< orphan*/  field; } ;
typedef  TYPE_1__ EC_GROUP ;

/* Variables and functions */
 int BN_BITS2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 

int FUNC3(EC_GROUP *dest, const EC_GROUP *src)
{
    if (!FUNC0(dest->field, src->field))
        return 0;
    if (!FUNC0(dest->a, src->a))
        return 0;
    if (!FUNC0(dest->b, src->b))
        return 0;
    dest->poly[0] = src->poly[0];
    dest->poly[1] = src->poly[1];
    dest->poly[2] = src->poly[2];
    dest->poly[3] = src->poly[3];
    dest->poly[4] = src->poly[4];
    dest->poly[5] = src->poly[5];
    if (FUNC2(dest->a, (int)(dest->poly[0] + BN_BITS2 - 1) / BN_BITS2) ==
        NULL)
        return 0;
    if (FUNC2(dest->b, (int)(dest->poly[0] + BN_BITS2 - 1) / BN_BITS2) ==
        NULL)
        return 0;
    FUNC1(dest->a);
    FUNC1(dest->b);
    return 1;
}