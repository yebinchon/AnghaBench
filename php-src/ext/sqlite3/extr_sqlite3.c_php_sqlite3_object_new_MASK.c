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
typedef  int /*<<< orphan*/  php_sqlite3_free_list ;
struct TYPE_8__ {TYPE_1__ zo; int /*<<< orphan*/  free_list; } ;
typedef  TYPE_2__ php_sqlite3_db_object ;
typedef  int /*<<< orphan*/  llist_dtor_func_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ php_sqlite3_free_list_dtor ; 
 int /*<<< orphan*/  sqlite3_object_handlers ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zend_object *FUNC4(zend_class_entry *class_type) /* {{{ */
{
	php_sqlite3_db_object *intern;

	/* Allocate memory for it */
	intern = FUNC2(sizeof(php_sqlite3_db_object), class_type);

	/* Need to keep track of things to free */
	FUNC1(&(intern->free_list),  sizeof(php_sqlite3_free_list *), (llist_dtor_func_t)php_sqlite3_free_list_dtor, 0);

	FUNC3(&intern->zo, class_type);
	FUNC0(&intern->zo, class_type);

	intern->zo.handlers = &sqlite3_object_handlers;

	return &intern->zo;
}