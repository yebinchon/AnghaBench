#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_10__ {int /*<<< orphan*/  file_name_len; int /*<<< orphan*/  file_name; } ;
typedef  TYPE_2__ spl_filesystem_object ;
struct TYPE_9__ {int /*<<< orphan*/  data; } ;
struct TYPE_11__ {TYPE_1__ intern; int /*<<< orphan*/  current; } ;
typedef  TYPE_3__ spl_filesystem_iterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPL_FILE_DIR_CURRENT_AS_FILEINFO ; 
 int /*<<< orphan*/  SPL_FILE_DIR_CURRENT_AS_PATHNAME ; 
 int /*<<< orphan*/  SPL_FS_INFO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static zval *FUNC6(zend_object_iterator *iter)
{
	spl_filesystem_iterator *iterator = (spl_filesystem_iterator *)iter;
	spl_filesystem_object   *object   = FUNC3(iterator);

	if (FUNC0(object, SPL_FILE_DIR_CURRENT_AS_PATHNAME)) {
		if (FUNC2(iterator->current)) {
			FUNC5(object);
			FUNC1(&iterator->current, object->file_name, object->file_name_len);
		}
		return &iterator->current;
	} else if (FUNC0(object, SPL_FILE_DIR_CURRENT_AS_FILEINFO)) {
		if (FUNC2(iterator->current)) {
			FUNC5(object);
			FUNC4(0, object, SPL_FS_INFO, NULL, &iterator->current);
		}
		return &iterator->current;
	} else {
		return &iterator->intern.data;
	}
}