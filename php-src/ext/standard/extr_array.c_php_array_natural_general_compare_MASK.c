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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_2__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ Bucket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC5(const void *a, const void *b, int fold_case) /* {{{ */
{
	Bucket *f = (Bucket *) a;
	Bucket *s = (Bucket *) b;
	zend_string *tmp_str1, *tmp_str2;
	zend_string *str1 = FUNC4(&f->val, &tmp_str1);
	zend_string *str2 = FUNC4(&s->val, &tmp_str2);

	int result = FUNC2(FUNC1(str1), FUNC0(str1), FUNC1(str2), FUNC0(str2), fold_case);

	FUNC3(tmp_str1);
	FUNC3(tmp_str2);
	return result;
}