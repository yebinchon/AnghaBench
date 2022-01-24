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
typedef  int zend_bool ;
struct TYPE_4__ {int /*<<< orphan*/  server; scalar_t__ assume_national_character_set_strings; } ;
typedef  TYPE_1__ pdo_mysql_db_handle ;
struct TYPE_5__ {scalar_t__ driver_data; } ;
typedef  TYPE_2__ pdo_dbh_t ;
typedef  enum pdo_param_type { ____Placeholder_pdo_param_type } pdo_param_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PDO_PARAM_STR_CHAR ; 
 int PDO_PARAM_STR_NATL ; 
 size_t FUNC3 (int /*<<< orphan*/ ,char*,char const*,size_t) ; 
 char* FUNC4 (int,size_t,int) ; 

__attribute__((used)) static int FUNC5(pdo_dbh_t *dbh, const char *unquoted, size_t unquotedlen, char **quoted, size_t *quotedlen, enum pdo_param_type paramtype )
{
	pdo_mysql_db_handle *H = (pdo_mysql_db_handle *)dbh->driver_data;
	zend_bool use_national_character_set = 0;

	if (H->assume_national_character_set_strings) {
		use_national_character_set = 1;
	}
	if ((paramtype & PDO_PARAM_STR_NATL) == PDO_PARAM_STR_NATL) {
		use_national_character_set = 1;
	}
	if ((paramtype & PDO_PARAM_STR_CHAR) == PDO_PARAM_STR_CHAR) {
		use_national_character_set = 0;
	}

	FUNC0("mysql_handle_quoter");
	FUNC1("dbh=%p", dbh);
	FUNC1("unquoted=%.*s", (int)unquotedlen, unquoted);
	*quoted = FUNC4(2, unquotedlen, 3 + (use_national_character_set ? 1 : 0));

	if (use_national_character_set) {
		*quotedlen = FUNC3(H->server, *quoted + 2, unquoted, unquotedlen);
		(*quoted)[0] = 'N';
		(*quoted)[1] = '\'';

		++*quotedlen; /* N prefix */
	} else {
		*quotedlen = FUNC3(H->server, *quoted + 1, unquoted, unquotedlen);
		(*quoted)[0] = '\'';
	}

	(*quoted)[++*quotedlen] = '\'';
	(*quoted)[++*quotedlen] = '\0';
	FUNC1("quoted=%.*s", (int)*quotedlen, *quoted);
	FUNC2(1);
}