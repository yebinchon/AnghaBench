#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_6__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_7__ {scalar_t__ doc_comment; int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ zend_class_constant ;
struct TYPE_8__ {scalar_t__ save_comments; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_6__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  accel_directives ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*) ; 

__attribute__((used)) static void FUNC7(zval *zv)
{
	zend_class_constant *c = FUNC3(zv);

	if (!FUNC5(c)) {
		FUNC6(c, c);
		FUNC0(sizeof(zend_class_constant));
		FUNC4(&c->value);
		if (FUNC2(accel_directives).save_comments && c->doc_comment) {
			FUNC1(c->doc_comment);
		}
	}
}