#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  char zend_uchar ;
typedef  scalar_t__ zend_bool ;
struct TYPE_17__ {char* (* get_auth_data ) (int /*<<< orphan*/ *,size_t*,TYPE_6__* const,char const* const,char const* const,size_t const,char*,size_t,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ;} ;
struct st_mysqlnd_authentication_plugin {TYPE_2__ methods; } ;
typedef  scalar_t__ enum_func_status ;
struct TYPE_16__ {char* s; size_t l; } ;
struct TYPE_21__ {scalar_t__ const persistent; TYPE_4__* m; TYPE_13__* error_info; TYPE_3__* protocol_frame_codec; TYPE_1__ authentication_plugin_data; } ;
struct TYPE_20__ {size_t l; char* s; } ;
struct TYPE_19__ {int /*<<< orphan*/  (* set_client_option ) (TYPE_6__* const,int /*<<< orphan*/ ,char*) ;struct st_mysqlnd_authentication_plugin* (* fetch_auth_plugin_by_name ) (char*) ;} ;
struct TYPE_18__ {int /*<<< orphan*/  data; } ;
struct TYPE_15__ {scalar_t__ error_no; } ;
typedef  TYPE_5__ MYSQLND_STRING ;
typedef  int /*<<< orphan*/  MYSQLND_SESSION_OPTIONS ;
typedef  TYPE_6__ MYSQLND_CONN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  CR_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAIL ; 
 scalar_t__ const FALSE ; 
 char const* const MYSQLND_DEFAULT_AUTH_PROTOCOL ; 
 int /*<<< orphan*/  MYSQLND_OPT_AUTH_PROTOCOL ; 
 scalar_t__ PASS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_13__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_13__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  UNKNOWN_SQLSTATE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__ const) ; 
 char* FUNC10 (size_t,scalar_t__ const) ; 
 char* FUNC11 (char const* const,scalar_t__ const) ; 
 scalar_t__ FUNC12 (TYPE_6__* const,char const* const,int /*<<< orphan*/ ,char const* const,size_t const,char const* const,size_t const,scalar_t__ const,scalar_t__,char*,char*,size_t,char**,size_t*,char**,size_t*) ; 
 scalar_t__ FUNC13 (TYPE_6__* const,char const* const,char const* const,size_t const,char const* const,size_t const,int /*<<< orphan*/  const* const,int /*<<< orphan*/  const,unsigned int const,scalar_t__,char*,struct st_mysqlnd_authentication_plugin*,char*,size_t,char*,size_t,char**,size_t*,char**,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char const* const) ; 
 struct st_mysqlnd_authentication_plugin* FUNC16 (char*) ; 
 char* FUNC17 (int /*<<< orphan*/ *,size_t*,TYPE_6__* const,char const* const,char const* const,size_t const,char*,size_t,int /*<<< orphan*/  const* const,int /*<<< orphan*/ ,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_6__* const,int /*<<< orphan*/ ,char*) ; 

enum_func_status
FUNC19(
			MYSQLND_CONN_DATA * const conn,
			const char * const user,
			const char * const passwd,
			const size_t passwd_len,
			const char * const db,
			const size_t db_len,
			const MYSQLND_STRING auth_plugin_data,
			const char * const auth_protocol,
			const unsigned int charset_no,
			const MYSQLND_SESSION_OPTIONS * const session_options,
			const zend_ulong mysql_flags,
			const zend_bool silent,
			const zend_bool is_change_user
			)
{
	enum_func_status ret = FAIL;
	zend_bool first_call = TRUE;

	char * switch_to_auth_protocol = NULL;
	size_t switch_to_auth_protocol_len = 0;
	char * requested_protocol = NULL;
	zend_uchar * plugin_data;
	size_t plugin_data_len;

	FUNC0("mysqlnd_run_authentication");

	plugin_data_len = auth_plugin_data.l;
	plugin_data = FUNC8(plugin_data_len + 1);
	if (!plugin_data) {
		goto end;
	}
	FUNC6(plugin_data, auth_plugin_data.s, plugin_data_len);
	plugin_data[plugin_data_len] = '\0';

	requested_protocol = FUNC11(auth_protocol? auth_protocol : MYSQLND_DEFAULT_AUTH_PROTOCOL, FALSE);
	if (!requested_protocol) {
		goto end;
	}

	do {
		struct st_mysqlnd_authentication_plugin * auth_plugin = conn->m->fetch_auth_plugin_by_name(requested_protocol);

		if (!auth_plugin) {
			if (first_call) {
				FUNC9(requested_protocol, FALSE);
				requested_protocol = FUNC11(MYSQLND_DEFAULT_AUTH_PROTOCOL, FALSE);
			} else {
				FUNC14(NULL, E_WARNING, "The server requested authentication method unknown to the client [%s]", requested_protocol);
				FUNC3(conn->error_info, CR_NOT_IMPLEMENTED, UNKNOWN_SQLSTATE, "The server requested authentication method unknown to the client");
				goto end;
			}
		}


		{
			zend_uchar * switch_to_auth_protocol_data = NULL;
			size_t switch_to_auth_protocol_data_len = 0;
			zend_uchar * scrambled_data = NULL;
			size_t scrambled_data_len = 0;

			switch_to_auth_protocol = NULL;
			switch_to_auth_protocol_len = 0;

			if (conn->authentication_plugin_data.s) {
				FUNC9(conn->authentication_plugin_data.s, conn->persistent);
				conn->authentication_plugin_data.s = NULL;
			}
			conn->authentication_plugin_data.l = plugin_data_len;
			conn->authentication_plugin_data.s = FUNC10(conn->authentication_plugin_data.l, conn->persistent);
			if (!conn->authentication_plugin_data.s) {
				FUNC4(conn->error_info);
				goto end;
			}
			FUNC6(conn->authentication_plugin_data.s, plugin_data, plugin_data_len);

			FUNC1("salt(%d)=[%.*s]", plugin_data_len, plugin_data_len, plugin_data);
			/* The data should be allocated with malloc() */
			if (auth_plugin) {
				scrambled_data = auth_plugin->methods.get_auth_data(
					NULL, &scrambled_data_len, conn, user, passwd,
					passwd_len, plugin_data, plugin_data_len,
					session_options, conn->protocol_frame_codec->data,
					mysql_flags);
			}

			if (conn->error_info->error_no) {
				goto end;
			}
			if (FALSE == is_change_user) {
				ret = FUNC13(conn, user, passwd, passwd_len, db, db_len, session_options, mysql_flags,
											charset_no,
											first_call,
											requested_protocol,
											auth_plugin, plugin_data, plugin_data_len,
											scrambled_data, scrambled_data_len,
											&switch_to_auth_protocol, &switch_to_auth_protocol_len,
											&switch_to_auth_protocol_data, &switch_to_auth_protocol_data_len
											);
			} else {
				ret = FUNC12(conn, user, FUNC15(user), passwd, passwd_len, db, db_len, silent,
											   first_call,
											   requested_protocol,
											   scrambled_data, scrambled_data_len,
											   &switch_to_auth_protocol, &switch_to_auth_protocol_len,
											   &switch_to_auth_protocol_data, &switch_to_auth_protocol_data_len
											  );
			}
			first_call = FALSE;
			FUNC5(scrambled_data);

			FUNC1("switch_to_auth_protocol=%s", switch_to_auth_protocol? switch_to_auth_protocol:"n/a");
			if (requested_protocol && switch_to_auth_protocol) {
				FUNC7(requested_protocol);
				requested_protocol = switch_to_auth_protocol;
			}

			if (plugin_data) {
				FUNC7(plugin_data);
			}
			plugin_data_len = switch_to_auth_protocol_data_len;
			plugin_data = switch_to_auth_protocol_data;
		}
		FUNC1("conn->error_info->error_no = %d", conn->error_info->error_no);
	} while (ret == FAIL && conn->error_info->error_no == 0 && switch_to_auth_protocol != NULL);

	if (ret == PASS) {
		FUNC1("saving requested_protocol=%s", requested_protocol);
		conn->m->set_client_option(conn, MYSQLND_OPT_AUTH_PROTOCOL, requested_protocol);
	}
end:
	if (plugin_data) {
		FUNC7(plugin_data);
	}
	if (requested_protocol) {
		FUNC7(requested_protocol);
	}

	FUNC2(ret);
}