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
typedef  int /*<<< orphan*/  zend_llist ;
typedef  int /*<<< orphan*/  redisSlotRange ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static redisSlotRange *FUNC5(zend_llist *src, size_t *count) {
    redisSlotRange *dst, *range;
    size_t i = 0;

    *count = FUNC2(src);
    dst = FUNC1(*count * sizeof(*dst), 1);

    range = FUNC3(src);
    while (range) {
        FUNC0(&dst[i++], range, sizeof(*range));
        range = FUNC4(src);
     }

    return dst;
}