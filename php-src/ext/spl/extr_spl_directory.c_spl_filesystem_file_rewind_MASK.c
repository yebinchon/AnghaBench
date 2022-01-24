#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_7__ {scalar_t__ current_line_num; int /*<<< orphan*/  stream; } ;
struct TYPE_8__ {TYPE_1__ file; } ;
struct TYPE_9__ {int /*<<< orphan*/  flags; TYPE_2__ u; int /*<<< orphan*/  file_name; } ;
typedef  TYPE_3__ spl_filesystem_object ;

/* Variables and functions */
 int /*<<< orphan*/  SPL_FILE_OBJECT_READ_AHEAD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_ce_RuntimeException ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC5(zval * this_ptr, spl_filesystem_object *intern) /* {{{ */
{
	if(!intern->u.file.stream) {
		FUNC4(spl_ce_RuntimeException, 0, "Object not initialized");
		return;
	}
	if (-1 == FUNC1(intern->u.file.stream)) {
		FUNC4(spl_ce_RuntimeException, 0, "Cannot rewind file %s", intern->file_name);
	} else {
		FUNC2(intern);
		intern->u.file.current_line_num = 0;
	}
	if (FUNC0(intern->flags, SPL_FILE_OBJECT_READ_AHEAD)) {
		FUNC3(this_ptr, intern, 1);
	}
}