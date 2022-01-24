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
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_6__ {struct TYPE_6__* parent; int /*<<< orphan*/ * str; int /*<<< orphan*/  flags; struct TYPE_6__* child; } ;
typedef  TYPE_1__ phpdbg_watch_element ;
typedef  int /*<<< orphan*/  Bucket ;

/* Variables and functions */
 int FAILURE ; 
 scalar_t__ IS_ARRAY ; 
 scalar_t__ IS_OBJECT ; 
 int /*<<< orphan*/  PHPDBG_WATCH_IMPLICIT ; 
 int /*<<< orphan*/  PHPDBG_WATCH_SIMPLE ; 
 int SUCCESS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(zval *zv, phpdbg_watch_element *element) {
	phpdbg_watch_element *new;
	zend_string *str;
	zval *orig_zv = zv;

	FUNC2(zv);
	if (FUNC3(zv) != IS_ARRAY && FUNC3(zv) != IS_OBJECT) {
		return FAILURE;
	}

	new = FUNC4(1, sizeof(phpdbg_watch_element));

	str = FUNC7(0, "%.*s[]", (int) FUNC0(element->str), FUNC1(element->str));
	FUNC9(element->str);
	element->str = str;
	element->flags = PHPDBG_WATCH_IMPLICIT;
	FUNC5((Bucket *) orig_zv, element);
	element->child = new;

	new->flags = PHPDBG_WATCH_SIMPLE;
	new->str = FUNC8(str);
	new->parent = element;
	FUNC6(zv, new);
	return SUCCESS;
}