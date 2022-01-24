#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_5__ {int /*<<< orphan*/  ht; } ;
struct TYPE_6__ {int children; TYPE_1__ child; } ;
struct TYPE_7__ {scalar_t__ iterator; int /*<<< orphan*/  std; TYPE_2__ node; int /*<<< orphan*/  retval; int /*<<< orphan*/  key; int /*<<< orphan*/  value; } ;
typedef  TYPE_3__ zend_generator ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(zend_object *object) /* {{{ */
{
	zend_generator *generator = (zend_generator*) object;

	FUNC4(generator, 0);

	/* we can't immediately free them in zend_generator_close() else yield from won't be able to fetch it */
	FUNC8(&generator->value);
	FUNC8(&generator->key);

	if (FUNC0(!FUNC2(generator->retval))) {
		FUNC8(&generator->retval);
	}

	if (FUNC1(generator->node.children > 1)) {
		FUNC5(generator->node.child.ht);
		FUNC3(generator->node.child.ht);
	}

	FUNC7(&generator->std);

	if (generator->iterator) {
		FUNC6(generator->iterator);
	}
}