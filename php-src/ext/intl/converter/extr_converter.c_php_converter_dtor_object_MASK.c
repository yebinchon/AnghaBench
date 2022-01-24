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
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_3__ {int /*<<< orphan*/  error; scalar_t__ dest; scalar_t__ src; } ;
typedef  TYPE_1__ php_converter_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static void FUNC3(zend_object *obj) {
	php_converter_object *objval = FUNC1(obj);

	if (objval->src) {
		FUNC2(objval->src);
	}

	if (objval->dest) {
		FUNC2(objval->dest);
	}

	FUNC0(&(objval->error));
}