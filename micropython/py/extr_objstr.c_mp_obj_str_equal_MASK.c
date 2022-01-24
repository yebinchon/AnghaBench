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
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  d1 ; 
 int /*<<< orphan*/  d2 ; 
 scalar_t__ h1 ; 
 scalar_t__ h2 ; 
 scalar_t__ l1 ; 
 scalar_t__ l2 ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

bool FUNC4(mp_obj_t s1, mp_obj_t s2) {
    if (FUNC3(s1) && FUNC3(s2)) {
        return s1 == s2;
    } else {
        FUNC1(s1, h1);
        FUNC1(s2, h2);
        // If any of hashes is 0, it means it's not valid
        if (h1 != 0 && h2 != 0 && h1 != h2) {
            return false;
        }
        FUNC0(s1, d1, l1);
        FUNC0(s2, d2, l2);
        if (l1 != l2) {
            return false;
        }
        return FUNC2(d1, d2, l1) == 0;
    }
}