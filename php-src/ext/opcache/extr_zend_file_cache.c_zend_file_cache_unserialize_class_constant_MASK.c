#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_persistent_script ;
struct TYPE_5__ {scalar_t__ doc_comment; int /*<<< orphan*/  value; struct TYPE_5__* ce; } ;
typedef  TYPE_1__ zend_class_constant ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*) ; 

__attribute__((used)) static void FUNC6(zval                    *zv,
                                                       zend_persistent_script  *script,
                                                       void                    *buf)
{
	if (!FUNC0(FUNC4(zv))) {
		zend_class_constant *c;

		FUNC1(FUNC4(zv));
		c = FUNC4(zv);

		FUNC3(c->ce != NULL);
		if (!FUNC0(c->ce)) {
			FUNC1(c->ce);

			FUNC5(&c->value, script, buf);

			if (c->doc_comment) {
				FUNC2(c->doc_comment);
			}
		}
	}
}