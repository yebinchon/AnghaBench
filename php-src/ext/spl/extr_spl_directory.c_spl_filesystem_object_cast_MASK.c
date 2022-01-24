#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_15__ {TYPE_1__* ce; } ;
typedef  TYPE_5__ zend_object ;
struct TYPE_12__ {int /*<<< orphan*/  d_name; } ;
struct TYPE_13__ {TYPE_2__ entry; } ;
struct TYPE_14__ {TYPE_3__ dir; } ;
struct TYPE_16__ {int type; TYPE_4__ u; int /*<<< orphan*/  file_name_len; int /*<<< orphan*/  file_name; } ;
typedef  TYPE_6__ spl_filesystem_object ;
struct TYPE_11__ {scalar_t__ __tostring; } ;

/* Variables and functions */
 int FAILURE ; 
 int IS_STRING ; 
#define  SPL_FS_DIR 130 
#define  SPL_FS_FILE 129 
#define  SPL_FS_INFO 128 
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int _IS_BOOL ; 
 TYPE_6__* FUNC4 (TYPE_5__*) ; 
 int FUNC5 (TYPE_5__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(zend_object *readobj, zval *writeobj, int type)
{
	spl_filesystem_object *intern = FUNC4(readobj);

	if (type == IS_STRING) {
		if (readobj->ce->__tostring) {
			return FUNC5(readobj, writeobj, type);
		}

		switch (intern->type) {
		case SPL_FS_INFO:
		case SPL_FS_FILE:
			FUNC2(writeobj, intern->file_name, intern->file_name_len);
			return SUCCESS;
		case SPL_FS_DIR:
			FUNC1(writeobj, intern->u.dir.entry.d_name);
			return SUCCESS;
		}
	} else if (type == _IS_BOOL) {
		FUNC3(writeobj);
		return SUCCESS;
	}
	FUNC0(writeobj);
	return FAILURE;
}