#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pdo_pgsql_lob_self {int /*<<< orphan*/  dbh; int /*<<< orphan*/  lfd; int /*<<< orphan*/  conn; } ;
struct TYPE_3__ {scalar_t__ abstract; } ;
typedef  TYPE_1__ php_stream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pdo_pgsql_lob_self*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(php_stream *stream, int close_handle)
{
	struct pdo_pgsql_lob_self *self = (struct pdo_pgsql_lob_self*)stream->abstract;

	if (close_handle) {
		FUNC1(self->conn, self->lfd);
	}
	FUNC2(&self->dbh);
	FUNC0(self);
	return 0;
}