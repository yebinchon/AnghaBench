#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_11__ {scalar_t__ open_mode; } ;
struct TYPE_10__ {scalar_t__ sub_path; } ;
struct TYPE_12__ {TYPE_3__ file; TYPE_2__ dir; } ;
struct TYPE_13__ {int type; scalar_t__ orig_path; TYPE_4__ u; scalar_t__ file_name; scalar_t__ _path; int /*<<< orphan*/  std; TYPE_1__* oth_handler; } ;
typedef  TYPE_5__ spl_filesystem_object ;
struct TYPE_9__ {int /*<<< orphan*/  (* dtor ) (TYPE_5__*) ;} ;

/* Variables and functions */
#define  SPL_FS_DIR 130 
#define  SPL_FS_FILE 129 
#define  SPL_FS_INFO 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(zend_object *object) /* {{{ */
{
	spl_filesystem_object *intern = FUNC2(object);

	if (intern->oth_handler && intern->oth_handler->dtor) {
		intern->oth_handler->dtor(intern);
	}

	FUNC4(&intern->std);

	if (intern->_path) {
		FUNC0(intern->_path);
	}
	if (intern->file_name) {
		FUNC0(intern->file_name);
	}
	switch(intern->type) {
	case SPL_FS_INFO:
		break;
	case SPL_FS_DIR:
		if (intern->u.dir.sub_path) {
			FUNC0(intern->u.dir.sub_path);
		}
		break;
	case SPL_FS_FILE:
		if (intern->u.file.open_mode) {
			FUNC0(intern->u.file.open_mode);
		}
		if (intern->orig_path) {
			FUNC0(intern->orig_path);
		}
		FUNC1(intern);
		break;
	}
}