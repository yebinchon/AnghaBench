#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ refcount; int /*<<< orphan*/  object; int /*<<< orphan*/  name_to_dispid; int /*<<< orphan*/  dispid_to_name; int /*<<< orphan*/ * res; } ;
typedef  TYPE_2__ php_dispatchex ;
struct TYPE_8__ {TYPE_1__* name; } ;
struct TYPE_6__ {int /*<<< orphan*/  val; } ;
typedef  int /*<<< orphan*/  IUnknown ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rshutdown_started ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(php_dispatchex *disp)
{
	/* Object store not available during request shutdown */
	if (FUNC0(rshutdown_started)) {
		FUNC6("destroying COM wrapper for PHP object %p (name:unknown)\n", FUNC4(disp->object));
	} else {
		FUNC6("destroying COM wrapper for PHP object %p (name:%s)\n", FUNC4(disp->object), FUNC5(disp->object)->name->val);
	}

	disp->res = NULL;

	if (disp->refcount > 0)
		FUNC1((IUnknown*)disp, 0);

	FUNC7(disp->dispid_to_name);
	FUNC7(disp->name_to_dispid);
	FUNC3(disp->dispid_to_name);
	FUNC3(disp->name_to_dispid);

	FUNC8(&disp->object);

	FUNC2(disp);
}