#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  scalar_t__ zend_prop_purpose ;
typedef  int /*<<< orphan*/  zend_object ;
struct TYPE_9__ {int /*<<< orphan*/  properties; } ;
struct TYPE_7__ {int column_count; TYPE_1__* columns; TYPE_4__ std; } ;
typedef  TYPE_2__ pdo_stmt_t ;
struct TYPE_8__ {TYPE_2__* stmt; } ;
typedef  TYPE_3__ pdo_row_t ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ ZEND_PROP_PURPOSE_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static HashTable *FUNC5(zend_object *object, zend_prop_purpose purpose)
{
	pdo_row_t *row = (pdo_row_t *)object;
	pdo_stmt_t *stmt = row->stmt;
	HashTable *props;
	int i;

	if (purpose != ZEND_PROP_PURPOSE_DEBUG || stmt == NULL) {
		return FUNC4(object, purpose);
	}

	if (!stmt->std.properties) {
		FUNC1(&stmt->std);
	}
	props = FUNC2(stmt->std.properties);
	for (i = 0; i < stmt->column_count; i++) {
		zval val;
		FUNC0(stmt, &val, i, NULL);

		FUNC3(props, stmt->columns[i].name, &val);
	}
	return props;
}