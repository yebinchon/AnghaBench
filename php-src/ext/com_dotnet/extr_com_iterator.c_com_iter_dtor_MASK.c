#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ zend_object_iterator ;
struct php_com_iterator {int /*<<< orphan*/  zdata; int /*<<< orphan*/  safe_array; int /*<<< orphan*/  v; scalar_t__ ev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zend_object_iterator *iter)
{
	struct php_com_iterator *I = (struct php_com_iterator*)FUNC2(iter->data);

	if (I->ev) {
		FUNC0(I->ev);
	}
	FUNC1(&I->v);
	FUNC1(&I->safe_array);
	FUNC3(&I->zdata);
}