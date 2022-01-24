#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ Bucket ;

/* Variables and functions */
 scalar_t__ IS_INDIRECT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(const void *a, const void *b) /* {{{ */
{
	Bucket *f;
	Bucket *s;
	zval *first;
	zval *second;

	f = (Bucket *) a;
	s = (Bucket *) b;

	first = &f->val;
	second = &s->val;

	if (FUNC0(FUNC2(first) == IS_INDIRECT)) {
		first = FUNC1(first);
	}
	if (FUNC0(FUNC2(second) == IS_INDIRECT)) {
		second = FUNC1(second);
	}

	return FUNC3(first, second);
}