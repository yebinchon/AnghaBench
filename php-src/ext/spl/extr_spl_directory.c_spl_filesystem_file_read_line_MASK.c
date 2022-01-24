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
struct TYPE_6__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ spl_filesystem_object ;

/* Variables and functions */
 int /*<<< orphan*/  SPL_FILE_OBJECT_SKIP_EMPTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int) ; 

__attribute__((used)) static int FUNC4(zval * this_ptr, spl_filesystem_object *intern, int silent) /* {{{ */
{
	int ret = FUNC3(this_ptr, intern, silent);

	while (FUNC0(intern->flags, SPL_FILE_OBJECT_SKIP_EMPTY) && ret == SUCCESS && FUNC2(intern)) {
		FUNC1(intern);
		ret = FUNC3(this_ptr, intern, silent);
	}

	return ret;
}