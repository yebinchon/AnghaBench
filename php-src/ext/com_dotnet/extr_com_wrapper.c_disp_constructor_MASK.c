#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_6__ {int refcount; int /*<<< orphan*/  res; int /*<<< orphan*/  object; int /*<<< orphan*/ * lpVtbl; int /*<<< orphan*/  engine_thread; } ;
typedef  TYPE_1__ php_dispatchex ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  le_dispatch ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  php_dispatch_vtbl ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static php_dispatchex *FUNC9(zval *object)
{
	php_dispatchex *disp = (php_dispatchex*)FUNC0(sizeof(php_dispatchex));
	zval *tmp;

	FUNC7("constructing a COM wrapper for PHP object %p (%s)\n", object, FUNC4(object)->name);

	if (disp == NULL)
		return NULL;

	FUNC6(disp, 0, sizeof(php_dispatchex));

	disp->engine_thread = FUNC1();
	disp->lpVtbl = &php_dispatch_vtbl;
	disp->refcount = 1;


	if (object) {
		FUNC2(&disp->object, object);
	} else {
		FUNC3(&disp->object);
	}

	tmp = FUNC8(disp, le_dispatch);
	disp->res = FUNC5(tmp);

	return disp;
}