#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  scalar_t__ enum_func_status ;
typedef  int /*<<< orphan*/  MYSQLND_STRING ;
typedef  int /*<<< orphan*/  MYSQLND_SESSION_OPTIONS ;
typedef  int /*<<< orphan*/  MYSQLND_CONN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ PASS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ * const,char const* const,char const* const,size_t const,char const* const,size_t const,int /*<<< orphan*/  const,char const* const,unsigned int const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ * const,unsigned int const,size_t const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const) ; 

enum_func_status
FUNC4(
			MYSQLND_CONN_DATA * const conn,
			const char * const user,
			const char * const passwd,
			const char * const db,
			const size_t db_len,
			const size_t passwd_len,
			const MYSQLND_STRING authentication_plugin_data,
			const char * const authentication_protocol,
			const unsigned int charset_no,
			const size_t server_capabilities,
			const MYSQLND_SESSION_OPTIONS * const session_options,
			const zend_ulong mysql_flags
			)
{
	enum_func_status ret = FAIL;
	FUNC0("mysqlnd_connect_run_authentication");

	ret = FUNC3(conn, charset_no, server_capabilities, session_options, mysql_flags);
	if (PASS == ret) {
		ret = FUNC2(conn, user, passwd, passwd_len, db, db_len,
										 authentication_plugin_data, authentication_protocol,
										 charset_no, session_options, mysql_flags, FALSE /*silent*/, FALSE/*is_change*/);
	}
	FUNC1(ret);
}