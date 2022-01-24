#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_8__ {TYPE_1__ std; int /*<<< orphan*/  info_class; int /*<<< orphan*/  file_class; } ;
typedef  TYPE_2__ spl_filesystem_object ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  spl_ce_SplFileInfo ; 
 int /*<<< orphan*/  spl_ce_SplFileObject ; 
 int /*<<< orphan*/  spl_filesystem_object_handlers ; 
 TYPE_2__* FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_object *FUNC3(zend_class_entry *class_type)
{
	spl_filesystem_object *intern;

	intern = FUNC1(sizeof(spl_filesystem_object), class_type);
	/* intern->type = SPL_FS_INFO; done by set 0 */
	intern->file_class = spl_ce_SplFileObject;
	intern->info_class = spl_ce_SplFileInfo;

	FUNC2(&intern->std, class_type);
	FUNC0(&intern->std, class_type);
	intern->std.handlers = &spl_filesystem_object_handlers;

	return &intern->std;
}