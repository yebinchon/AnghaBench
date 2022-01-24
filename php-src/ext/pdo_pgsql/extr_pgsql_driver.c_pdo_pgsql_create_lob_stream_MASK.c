#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct pdo_pgsql_lob_self {int lfd; int /*<<< orphan*/  conn; int /*<<< orphan*/  oid; int /*<<< orphan*/  dbh; } ;
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_3__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_4__ {scalar_t__ driver_data; } ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *) ; 
 struct pdo_pgsql_lob_self* FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct pdo_pgsql_lob_self*) ; 
 int /*<<< orphan*/  pdo_pgsql_lob_stream_ops ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,struct pdo_pgsql_lob_self*,int /*<<< orphan*/ ,char*) ; 

php_stream *FUNC6(zval *dbh, int lfd, Oid oid)
{
	php_stream *stm;
	struct pdo_pgsql_lob_self *self = FUNC3(1, sizeof(*self));
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)(FUNC2(dbh))->driver_data;

	FUNC0(&self->dbh, dbh);
	self->lfd = lfd;
	self->oid = oid;
	self->conn = H->server;

	stm = FUNC5(&pdo_pgsql_lob_stream_ops, self, 0, "r+b");

	if (stm) {
		FUNC1(dbh);
		return stm;
	}

	FUNC4(self);
	return NULL;
}