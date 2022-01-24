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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ zend_class_entry ;
typedef  scalar_t__ zend_bool ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ZEND_FETCH_CLASS_ALLOW_UNLINKED ; 
 int ZEND_FETCH_CLASS_NO_AUTOLOAD ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  delayed_autoloads ; 
 int /*<<< orphan*/  in_compilation ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_class_entry *FUNC7(
		zend_class_entry *scope, zend_string *name, zend_bool register_unresolved) {
	zend_class_entry *ce;
	if (!FUNC1(in_compilation)) {
		uint32_t flags = ZEND_FETCH_CLASS_ALLOW_UNLINKED | ZEND_FETCH_CLASS_NO_AUTOLOAD;
		ce = FUNC5(name, NULL, flags);
		if (ce) {
			return ce;
		}

		if (register_unresolved) {
			/* We'll autoload this class and process delayed variance obligations later. */
			if (!FUNC1(delayed_autoloads)) {
				FUNC0(FUNC1(delayed_autoloads));
				FUNC4(FUNC1(delayed_autoloads), 0, NULL, NULL, 0);
			}
			FUNC3(FUNC1(delayed_autoloads), name);
		}
	} else {
		ce = FUNC5(name, NULL, ZEND_FETCH_CLASS_NO_AUTOLOAD);
		if (ce && FUNC2(ce)) {
			return ce;
		}

		/* The current class may not be registered yet, so check for it explicitly. */
		if (FUNC6(scope->name, name)) {
			return scope;
		}
	}

	return NULL;
}