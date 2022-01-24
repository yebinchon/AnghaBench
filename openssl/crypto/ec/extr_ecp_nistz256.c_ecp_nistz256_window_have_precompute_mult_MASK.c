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
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/  const*) ; 
 int FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  nistz256 ; 

__attribute__((used)) static int FUNC3(const EC_GROUP *group)
{
    /* There is a hard-coded table for the default generator. */
    const EC_POINT *generator = FUNC0(group);

    if (generator != NULL && FUNC2(generator)) {
        /* There is a hard-coded table for the default generator. */
        return 1;
    }

    return FUNC1(group, nistz256);
}