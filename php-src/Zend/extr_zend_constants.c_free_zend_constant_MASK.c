#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {scalar_t__ name; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ zend_constant ;

/* Variables and functions */
 int CONST_PERSISTENT ; 
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(zval *zv)
{
	zend_constant *c = FUNC1(zv);

	if (!(FUNC0(c) & CONST_PERSISTENT)) {
		FUNC6(&c->value);
		if (c->name) {
			FUNC4(c->name, 0);
		}
		FUNC2(c);
	} else {
		FUNC5(&c->value);
		if (c->name) {
			FUNC4(c->name, 1);
		}
		FUNC3(c);
	}
}