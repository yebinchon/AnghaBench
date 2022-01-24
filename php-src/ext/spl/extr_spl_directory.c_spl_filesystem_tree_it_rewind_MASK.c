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
typedef  int /*<<< orphan*/  zend_object_iterator ;
struct TYPE_9__ {int /*<<< orphan*/  d_name; } ;
struct TYPE_11__ {TYPE_1__ entry; scalar_t__ dirp; scalar_t__ index; } ;
struct TYPE_10__ {TYPE_3__ dir; } ;
struct TYPE_12__ {TYPE_2__ u; } ;
typedef  TYPE_4__ spl_filesystem_object ;
struct TYPE_13__ {int /*<<< orphan*/  current; } ;
typedef  TYPE_5__ spl_filesystem_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(zend_object_iterator *iter)
{
	spl_filesystem_iterator *iterator = (spl_filesystem_iterator *)iter;
	spl_filesystem_object   *object   = FUNC5(iterator);

	object->u.dir.index = 0;
	if (object->u.dir.dirp) {
		FUNC2(object->u.dir.dirp);
	}
	do {
		FUNC3(object);
	} while (FUNC4(object->u.dir.entry.d_name));
	if (!FUNC1(iterator->current)) {
		FUNC6(&iterator->current);
		FUNC0(&iterator->current);
	}
}