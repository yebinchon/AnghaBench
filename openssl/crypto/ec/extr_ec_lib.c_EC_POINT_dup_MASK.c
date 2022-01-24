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
typedef  int /*<<< orphan*/  EC_POINT ;
typedef  int /*<<< orphan*/  EC_GROUP ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 

EC_POINT *FUNC3(const EC_POINT *a, const EC_GROUP *group)
{
    EC_POINT *t;
    int r;

    if (a == NULL)
        return NULL;

    t = FUNC2(group);
    if (t == NULL)
        return NULL;
    r = FUNC0(t, a);
    if (!r) {
        FUNC1(t);
        return NULL;
    }
    return t;
}