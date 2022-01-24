#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_7__ ;
typedef  struct TYPE_33__   TYPE_6__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;
typedef  struct TYPE_27__   TYPE_19__ ;
typedef  struct TYPE_26__   TYPE_11__ ;
typedef  struct TYPE_25__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_ulong ;
typedef  int /*<<< orphan*/  zend_uchar ;
typedef  scalar_t__ zend_bool ;
struct TYPE_31__ {int /*<<< orphan*/  (* handle_server_response ) (struct st_mysqlnd_authentication_plugin*,TYPE_10__*,int /*<<< orphan*/  const* const,size_t const,char const* const,size_t const) ;} ;
struct st_mysqlnd_authentication_plugin {TYPE_4__ methods; } ;
typedef  scalar_t__ enum_func_status ;
struct TYPE_34__ {size_t auth_data_len; unsigned int charset_no; scalar_t__ send_auth_data; char* user; char* db; size_t db_len; char* auth_plugin_name; int response_code; size_t new_auth_protocol_len; size_t new_auth_protocol_data_len; int /*<<< orphan*/  message_len; int /*<<< orphan*/  message; int /*<<< orphan*/  error; int /*<<< orphan*/  error_no; scalar_t__* sqlstate; scalar_t__ new_auth_protocol_data; int /*<<< orphan*/  new_auth_protocol; int /*<<< orphan*/  connect_attr; int /*<<< orphan*/ * auth_data; int /*<<< orphan*/  max_packet_size; int /*<<< orphan*/  client_flags; } ;
struct TYPE_33__ {scalar_t__ charset_name; int /*<<< orphan*/  max_allowed_packet; } ;
struct TYPE_32__ {int /*<<< orphan*/  l; int /*<<< orphan*/  s; } ;
struct TYPE_30__ {int /*<<< orphan*/  connect_attr; } ;
struct TYPE_28__ {int /*<<< orphan*/  (* init_auth_packet ) (TYPE_7__*) ;int /*<<< orphan*/  (* init_change_auth_response_packet ) (TYPE_7__*) ;int /*<<< orphan*/  (* init_auth_response_packet ) (TYPE_7__*) ;} ;
struct TYPE_29__ {TYPE_1__ m; } ;
struct TYPE_27__ {int /*<<< orphan*/  sqlstate; } ;
struct TYPE_26__ {unsigned int nr; } ;
struct TYPE_25__ {int server_capabilities; TYPE_5__ last_message; TYPE_19__* error_info; int /*<<< orphan*/  charset; TYPE_3__* options; TYPE_2__* payload_decoder_factory; int /*<<< orphan*/  state; } ;
typedef  TYPE_6__ MYSQLND_SESSION_OPTIONS ;
typedef  TYPE_7__ MYSQLND_PACKET_CHANGE_AUTH_RESPONSE ;
typedef  TYPE_7__ MYSQLND_PACKET_AUTH_RESPONSE ;
typedef  TYPE_7__ MYSQLND_PACKET_AUTH ;
typedef  TYPE_10__ MYSQLND_CONN_DATA ;
typedef  TYPE_11__ MYSQLND_CHARSET ;

/* Variables and functions */
 int CLIENT_CONNECT_ATTRS ; 
 int /*<<< orphan*/  CONN_QUIT_SENT ; 
 int /*<<< orphan*/  CR_SERVER_GONE_ERROR ; 
 int /*<<< orphan*/  CR_UNKNOWN_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 scalar_t__ FUNC5 (TYPE_10__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_10__*,TYPE_7__*) ; 
 scalar_t__ PASS ; 
 int /*<<< orphan*/  FUNC7 (TYPE_19__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ const TRUE ; 
 int /*<<< orphan*/  UNKNOWN_SQLSTATE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/ * FUNC11 (size_t) ; 
 char* FUNC12 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 TYPE_11__* FUNC13 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (unsigned int) ; 
 int /*<<< orphan*/  mysqlnd_old_passwd ; 
 int /*<<< orphan*/  mysqlnd_server_gone ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC19 (struct st_mysqlnd_authentication_plugin*,TYPE_10__*,int /*<<< orphan*/  const* const,size_t const,char const* const,size_t const) ; 

enum_func_status
FUNC20(MYSQLND_CONN_DATA * conn,
							  const char * const user,
							  const char * const passwd,
							  const size_t passwd_len,
							  const char * const db,
							  const size_t db_len,
							  const MYSQLND_SESSION_OPTIONS * const session_options,
							  const zend_ulong mysql_flags,
							  const unsigned int server_charset_no,
							  const zend_bool use_full_blown_auth_packet,
							  const char * const auth_protocol,
							  struct st_mysqlnd_authentication_plugin * auth_plugin,
							  const zend_uchar * const orig_auth_plugin_data,
							  const size_t orig_auth_plugin_data_len,
							  const zend_uchar * const auth_plugin_data,
							  const size_t auth_plugin_data_len,
							  char ** switch_to_auth_protocol,
							  size_t * const switch_to_auth_protocol_len,
							  zend_uchar ** switch_to_auth_protocol_data,
							  size_t * const switch_to_auth_protocol_data_len
							 )
{
	enum_func_status ret = FAIL;
	const MYSQLND_CHARSET * charset = NULL;
	MYSQLND_PACKET_AUTH_RESPONSE auth_resp_packet;

	FUNC0("mysqlnd_auth_handshake");

	conn->payload_decoder_factory->m.init_auth_response_packet(&auth_resp_packet);

	if (use_full_blown_auth_packet != TRUE) {
		MYSQLND_PACKET_CHANGE_AUTH_RESPONSE change_auth_resp_packet;

		conn->payload_decoder_factory->m.init_change_auth_response_packet(&change_auth_resp_packet);

		change_auth_resp_packet.auth_data = auth_plugin_data;
		change_auth_resp_packet.auth_data_len = auth_plugin_data_len;

		if (!FUNC6(conn, &change_auth_resp_packet)) {
			FUNC8(&conn->state, CONN_QUIT_SENT);
			FUNC7(conn->error_info, CR_SERVER_GONE_ERROR, UNKNOWN_SQLSTATE, mysqlnd_server_gone);
			FUNC4(&change_auth_resp_packet);
			goto end;
		}
		FUNC4(&change_auth_resp_packet);
	} else {
		MYSQLND_PACKET_AUTH auth_packet;

		conn->payload_decoder_factory->m.init_auth_packet(&auth_packet);

		auth_packet.client_flags = mysql_flags;
		auth_packet.max_packet_size = session_options->max_allowed_packet;
		if (session_options->charset_name && (charset = FUNC13(session_options->charset_name))) {
			auth_packet.charset_no	= charset->nr;
		} else {
			auth_packet.charset_no	= server_charset_no;
		}

		auth_packet.send_auth_data = TRUE;
		auth_packet.user		= user;
		auth_packet.db			= db;
		auth_packet.db_len		= db_len;

		auth_packet.auth_data = auth_plugin_data;
		auth_packet.auth_data_len = auth_plugin_data_len;
		auth_packet.auth_plugin_name = auth_protocol;

		if (conn->server_capabilities & CLIENT_CONNECT_ATTRS) {
			auth_packet.connect_attr = conn->options->connect_attr;
		}

		if (!FUNC6(conn, &auth_packet)) {
			FUNC4(&auth_packet);
			goto end;
		}

		if (use_full_blown_auth_packet == TRUE) {
			conn->charset = FUNC14(auth_packet.charset_no);
		}

		FUNC4(&auth_packet);
	}

	if (auth_plugin && auth_plugin->methods.handle_server_response) {
		auth_plugin->methods.handle_server_response(auth_plugin, conn,
				orig_auth_plugin_data, orig_auth_plugin_data_len, passwd, passwd_len);
	}

	if (FAIL == FUNC5(conn, &auth_resp_packet) || auth_resp_packet.response_code >= 0xFE) {
		if (auth_resp_packet.response_code == 0xFE) {
			/* old authentication with new server  !*/
			if (!auth_resp_packet.new_auth_protocol) {
				FUNC1(mysqlnd_old_passwd);
				FUNC7(conn->error_info, CR_UNKNOWN_ERROR, UNKNOWN_SQLSTATE, mysqlnd_old_passwd);
			} else {
				*switch_to_auth_protocol = FUNC12(auth_resp_packet.new_auth_protocol, auth_resp_packet.new_auth_protocol_len, FALSE);
				*switch_to_auth_protocol_len = auth_resp_packet.new_auth_protocol_len;
				if (auth_resp_packet.new_auth_protocol_data) {
					*switch_to_auth_protocol_data_len = auth_resp_packet.new_auth_protocol_data_len;
					*switch_to_auth_protocol_data = FUNC11(*switch_to_auth_protocol_data_len);
					FUNC10(*switch_to_auth_protocol_data, auth_resp_packet.new_auth_protocol_data, *switch_to_auth_protocol_data_len);
				} else {
					*switch_to_auth_protocol_data = NULL;
					*switch_to_auth_protocol_data_len = 0;
				}
			}
		} else if (auth_resp_packet.response_code == 0xFF) {
			if (auth_resp_packet.sqlstate[0]) {
				FUNC15(conn->error_info->sqlstate, auth_resp_packet.sqlstate, sizeof(conn->error_info->sqlstate));
				FUNC2("ERROR:%u [SQLSTATE:%s] %s", auth_resp_packet.error_no, auth_resp_packet.sqlstate, auth_resp_packet.error);
			}
			FUNC7(conn->error_info, auth_resp_packet.error_no, UNKNOWN_SQLSTATE, auth_resp_packet.error);
		}
		goto end;
	}

	FUNC9(conn->last_message.s, conn->last_message.l, auth_resp_packet.message, auth_resp_packet.message_len);
	ret = PASS;
end:
	FUNC4(&auth_resp_packet);
	FUNC3(ret);
}