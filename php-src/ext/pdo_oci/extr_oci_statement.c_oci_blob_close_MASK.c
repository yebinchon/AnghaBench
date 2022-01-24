#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_object ;
struct oci_lob_self {struct oci_lob_self* E; int /*<<< orphan*/  dbh; int /*<<< orphan*/  lob; int /*<<< orphan*/  err; int /*<<< orphan*/  svc; TYPE_2__* stmt; } ;
struct TYPE_4__ {scalar_t__ abstract; } ;
typedef  TYPE_1__ php_stream ;
struct TYPE_5__ {int /*<<< orphan*/  std; } ;
typedef  TYPE_2__ pdo_stmt_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct oci_lob_self*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(php_stream *stream, int close_handle)
{
	struct oci_lob_self *self = (struct oci_lob_self *)stream->abstract;
	pdo_stmt_t *stmt = self->stmt;

	if (close_handle) {
		zend_object *obj = &stmt->std;

		FUNC1(self->E->svc, self->E->err, self->lob);
		FUNC3(&self->dbh);
		FUNC0(obj);
		FUNC2(self->E);
		FUNC2(self);
	}

	/* php_pdo_free_statement(stmt); */
	return 0;
}