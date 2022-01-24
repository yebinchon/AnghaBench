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
struct TYPE_4__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ pdo_sqlite_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(pdo_dbh_t *dbh, const char *name, size_t *len)
{
	pdo_sqlite_db_handle *H = (pdo_sqlite_db_handle *)dbh->driver_data;
	char *id;

	id = FUNC0(FUNC1(H->db));
	*len = FUNC2(id);
	return id;
}