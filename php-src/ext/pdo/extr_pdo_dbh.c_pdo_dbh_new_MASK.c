#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_8__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_1__ zend_object ;
typedef  int /*<<< orphan*/  zend_class_entry ;
typedef  int /*<<< orphan*/  pdo_dbh_t ;
struct TYPE_10__ {TYPE_1__ std; TYPE_8__* inner; } ;
typedef  TYPE_2__ pdo_dbh_object_t ;
struct TYPE_11__ {int /*<<< orphan*/  def_stmt_ce; } ;

/* Variables and functions */
 TYPE_8__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pdo_dbh_object_handlers ; 
 int /*<<< orphan*/  pdo_dbstmt_ce ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_2__* FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 

zend_object *FUNC5(zend_class_entry *ce)
{
	pdo_dbh_object_t *dbh;

	dbh = FUNC3(sizeof(pdo_dbh_object_t), ce);
	FUNC4(&dbh->std, ce);
	FUNC1(&dbh->std, ce);
	FUNC2(&dbh->std);
	dbh->inner = FUNC0(1, sizeof(pdo_dbh_t));
	dbh->inner->def_stmt_ce = pdo_dbstmt_ce;

	dbh->std.handlers = &pdo_dbh_object_handlers;

	return &dbh->std;
}