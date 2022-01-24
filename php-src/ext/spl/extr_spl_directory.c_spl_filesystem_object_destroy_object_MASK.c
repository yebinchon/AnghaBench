#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_9__ {TYPE_6__* stream; } ;
struct TYPE_8__ {TYPE_6__* dirp; } ;
struct TYPE_10__ {TYPE_2__ file; TYPE_1__ dir; } ;
struct TYPE_11__ {int type; TYPE_3__ u; } ;
typedef  TYPE_4__ spl_filesystem_object ;
struct TYPE_12__ {int /*<<< orphan*/  is_persistent; } ;

/* Variables and functions */
#define  SPL_FS_DIR 129 
#define  SPL_FS_FILE 128 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 TYPE_4__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(zend_object *object) /* {{{ */
{
	spl_filesystem_object *intern = FUNC2(object);

	FUNC3(object);

	switch(intern->type) {
	case SPL_FS_DIR:
		if (intern->u.dir.dirp) {
			FUNC0(intern->u.dir.dirp);
			intern->u.dir.dirp = NULL;
		}
		break;
	case SPL_FS_FILE:
		if (intern->u.file.stream) {
			/*
			if (intern->u.file.zcontext) {
			   zend_list_delref(Z_RESVAL_P(intern->zcontext));
			}
			*/
			if (!intern->u.file.stream->is_persistent) {
				FUNC0(intern->u.file.stream);
			} else {
				FUNC1(intern->u.file.stream);
			}
			intern->u.file.stream = NULL;
		}
		break;
	default:
		break;
	}
}