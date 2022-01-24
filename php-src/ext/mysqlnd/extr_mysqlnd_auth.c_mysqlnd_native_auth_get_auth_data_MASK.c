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
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_uchar ;
struct st_mysqlnd_authentication_plugin {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  error_info; } ;
typedef  int /*<<< orphan*/  MYSQLND_SESSION_OPTIONS ;
typedef  int /*<<< orphan*/  MYSQLND_PFC_DATA ;
typedef  TYPE_1__ MYSQLND_CONN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  CR_MALFORMED_PACKET ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t const,size_t const) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t const SCRAMBLE_LENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  UNKNOWN_SQLSTATE ; 
 int /*<<< orphan*/ * FUNC4 (size_t const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 

__attribute__((used)) static zend_uchar *
FUNC6(struct st_mysqlnd_authentication_plugin * self,
								  size_t * auth_data_len,
								  MYSQLND_CONN_DATA * conn, const char * const user, const char * const passwd,
								  const size_t passwd_len, zend_uchar * auth_plugin_data, const size_t auth_plugin_data_len,
								  const MYSQLND_SESSION_OPTIONS * const session_options,
								  const MYSQLND_PFC_DATA * const pfc_data,
								  const zend_ulong mysql_flags
								 )
{
	zend_uchar * ret = NULL;
	FUNC0("mysqlnd_native_auth_get_auth_data");
	*auth_data_len = 0;

	/* 5.5.x reports 21 as scramble length because it needs to show the length of the data before the plugin name */
	if (auth_plugin_data_len < SCRAMBLE_LENGTH) {
		/* mysql_native_password only works with SCRAMBLE_LENGTH scramble */
		FUNC3(conn->error_info, CR_MALFORMED_PACKET, UNKNOWN_SQLSTATE, "The server sent wrong length for scramble");
		FUNC1("The server sent wrong length for scramble %u. Expected %u", auth_plugin_data_len, SCRAMBLE_LENGTH);
		FUNC2(NULL);
	}

	/* copy scrambled pass*/
	if (passwd && passwd_len) {
		ret = FUNC4(SCRAMBLE_LENGTH);
		*auth_data_len = SCRAMBLE_LENGTH;
		/* In 4.1 we use CLIENT_SECURE_CONNECTION and thus the len of the buf should be passed */
		FUNC5((zend_uchar*)ret, auth_plugin_data, (zend_uchar*)passwd, passwd_len);
	}
	FUNC2(ret);
}