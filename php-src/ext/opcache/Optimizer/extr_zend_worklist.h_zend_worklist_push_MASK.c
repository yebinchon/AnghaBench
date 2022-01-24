#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int capacity; } ;
struct TYPE_4__ {TYPE_2__ stack; int /*<<< orphan*/  visited; } ;
typedef  TYPE_1__ zend_worklist ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 

__attribute__((used)) static inline int FUNC4(zend_worklist *worklist, int i)
{
	FUNC0(i >= 0 && i < worklist->stack.capacity);

	if (FUNC1(worklist->visited, i)) {
		return 0;
	}

	FUNC2(worklist->visited, i);
	FUNC3(&worklist->stack, i);
	return 1;
}