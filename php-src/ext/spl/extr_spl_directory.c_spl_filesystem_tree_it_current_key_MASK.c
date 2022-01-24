#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_8__ {int /*<<< orphan*/  d_name; } ;
struct TYPE_9__ {TYPE_1__ entry; } ;
struct TYPE_10__ {TYPE_2__ dir; } ;
struct TYPE_11__ {int /*<<< orphan*/  file_name_len; int /*<<< orphan*/  file_name; TYPE_3__ u; } ;
typedef  TYPE_4__ spl_filesystem_object ;
typedef  int /*<<< orphan*/  spl_filesystem_iterator ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SPL_FILE_DIR_KEY_AS_FILENAME ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC5(zend_object_iterator *iter, zval *key)
{
	spl_filesystem_object *object = FUNC3((spl_filesystem_iterator *)iter);

	if (FUNC0(object, SPL_FILE_DIR_KEY_AS_FILENAME)) {
		FUNC1(key, object->u.dir.entry.d_name);
	} else {
		FUNC4(object);
		FUNC2(key, object->file_name, object->file_name_len);
	}
}