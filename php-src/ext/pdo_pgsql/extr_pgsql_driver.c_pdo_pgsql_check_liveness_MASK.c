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
struct TYPE_4__ {int /*<<< orphan*/  server; } ;
typedef  TYPE_1__ pdo_pgsql_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;

/* Variables and functions */
 scalar_t__ CONNECTION_BAD ; 
 scalar_t__ CONNECTION_OK ; 
 int FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 

__attribute__((used)) static int FUNC2(pdo_dbh_t *dbh)
{
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
	if (FUNC1(H->server) == CONNECTION_BAD) {
		FUNC0(H->server);
	}
	return (FUNC1(H->server) == CONNECTION_OK) ? SUCCESS : FAILURE;
}