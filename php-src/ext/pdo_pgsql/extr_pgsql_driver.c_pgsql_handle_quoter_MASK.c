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
typedef  enum pdo_param_type { ____Placeholder_pdo_param_type } pdo_param_type ;

/* Variables and functions */
#define  PDO_PARAM_LOB 128 
 unsigned char* FUNC0 (int /*<<< orphan*/ ,unsigned char*,size_t,size_t*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,char*,char const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 char* FUNC3 (size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,size_t) ; 
 char* FUNC5 (int,size_t,int) ; 

__attribute__((used)) static int FUNC6(pdo_dbh_t *dbh, const char *unquoted, size_t unquotedlen, char **quoted, size_t *quotedlen, enum pdo_param_type paramtype)
{
	unsigned char *escaped;
	pdo_pgsql_db_handle *H = (pdo_pgsql_db_handle *)dbh->driver_data;
	size_t tmp_len;

	switch (paramtype) {
		case PDO_PARAM_LOB:
			/* escapedlen returned by PQescapeBytea() accounts for trailing 0 */
			escaped = FUNC0(H->server, (unsigned char *)unquoted, unquotedlen, &tmp_len);
			*quotedlen = tmp_len + 1;
			*quoted = FUNC3(*quotedlen + 1);
			FUNC4((*quoted)+1, escaped, *quotedlen-2);
			(*quoted)[0] = '\'';
			(*quoted)[*quotedlen-1] = '\'';
			(*quoted)[*quotedlen] = '\0';
			FUNC2(escaped);
			break;
		default:
			*quoted = FUNC5(2, unquotedlen, 3);
			(*quoted)[0] = '\'';
			*quotedlen = FUNC1(H->server, *quoted + 1, unquoted, unquotedlen, NULL);
			(*quoted)[*quotedlen + 1] = '\'';
			(*quoted)[*quotedlen + 2] = '\0';
			*quotedlen += 2;
	}
	return 1;
}