#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
struct TYPE_6__ {int /*<<< orphan*/ * handlers; } ;
struct TYPE_5__ {int /*<<< orphan*/ * typeinfo; TYPE_2__ zo; int /*<<< orphan*/ * ce; int /*<<< orphan*/  code_page; int /*<<< orphan*/  v; } ;
typedef  TYPE_1__ php_com_dotnet_object ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  php_com_object_handlers ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 

zend_object* FUNC5(zend_class_entry *ce)
{
	php_com_dotnet_object *obj;

	FUNC3();
	obj = FUNC1(sizeof(*obj));
	FUNC2(obj, 0, sizeof(*obj));

	FUNC0(&obj->v);
	obj->code_page = CP_ACP;
	obj->ce = ce;

	FUNC4(&obj->zo, ce);
	obj->zo.handlers = &php_com_object_handlers;

	obj->typeinfo = NULL;

	return (zend_object*)obj;
}