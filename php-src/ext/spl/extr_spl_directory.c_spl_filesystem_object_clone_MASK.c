#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_22__ {int /*<<< orphan*/  ce; } ;
typedef  TYPE_5__ zend_object ;
struct TYPE_18__ {int /*<<< orphan*/  d_name; } ;
struct TYPE_19__ {int index; TYPE_1__ entry; } ;
struct TYPE_20__ {TYPE_2__ dir; } ;
struct TYPE_23__ {int type; TYPE_4__* oth_handler; int /*<<< orphan*/  oth; int /*<<< orphan*/  info_class; int /*<<< orphan*/  file_class; TYPE_3__ u; int /*<<< orphan*/  flags; void* _path; int /*<<< orphan*/  file_name_len; void* file_name; int /*<<< orphan*/  _path_len; } ;
typedef  TYPE_6__ spl_filesystem_object ;
struct TYPE_21__ {int /*<<< orphan*/  (* clone ) (TYPE_6__*,TYPE_6__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SPL_FILE_DIR_SKIPDOTS ; 
#define  SPL_FS_DIR 130 
#define  SPL_FS_FILE 129 
#define  SPL_FS_INFO 128 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 TYPE_6__* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_5__*) ; 

__attribute__((used)) static zend_object *FUNC10(zend_object *old_object)
{
	zend_object *new_object;
	spl_filesystem_object *intern;
	spl_filesystem_object *source;
	int index, skip_dots;

	source = FUNC5(old_object);
	new_object = FUNC7(old_object->ce);
	intern = FUNC5(new_object);

	intern->flags = source->flags;

	switch (source->type) {
		case SPL_FS_INFO:
			intern->_path_len = source->_path_len;
			intern->_path = FUNC2(source->_path, source->_path_len);
			intern->file_name_len = source->file_name_len;
			intern->file_name = FUNC2(source->file_name, intern->file_name_len);
			break;
		case SPL_FS_DIR:
			FUNC3(intern, source->_path);
			/* read until we hit the position in which we were before */
			skip_dots = FUNC0(source->flags, SPL_FILE_DIR_SKIPDOTS);
			for(index = 0; index < source->u.dir.index; ++index) {
				do {
					FUNC4(intern);
				} while (skip_dots && FUNC6(intern->u.dir.entry.d_name));
			}
			intern->u.dir.index = index;
			break;
		case SPL_FS_FILE:
			FUNC1(0);
	}

	intern->file_class = source->file_class;
	intern->info_class = source->info_class;
	intern->oth = source->oth;
	intern->oth_handler = source->oth_handler;

	FUNC9(new_object, old_object);

	if (intern->oth_handler && intern->oth_handler->clone) {
		intern->oth_handler->clone(source, intern);
	}

	return new_object;
}