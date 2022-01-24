#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  field; } ;
struct TYPE_7__ {int /*<<< orphan*/  Y; } ;
typedef  TYPE_1__ EC_POINT ;
typedef  TYPE_2__ EC_GROUP ;
typedef  int /*<<< orphan*/  BN_CTX ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*,TYPE_1__*) ; 

int FUNC3(const EC_GROUP *group, EC_POINT *point, BN_CTX *ctx)
{
    if (FUNC2(group, point) || FUNC0(point->Y))
        /* point is its own inverse */
        return 1;

    return FUNC1(point->Y, group->field, point->Y);
}