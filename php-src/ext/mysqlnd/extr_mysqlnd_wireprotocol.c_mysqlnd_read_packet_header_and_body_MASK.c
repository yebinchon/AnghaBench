#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_uchar ;
typedef  int /*<<< orphan*/  enum_func_status ;
typedef  enum mysqlnd_packet_type { ____Placeholder_mysqlnd_packet_type } mysqlnd_packet_type ;
struct TYPE_13__ {size_t const size; } ;
struct TYPE_12__ {TYPE_2__* data; } ;
struct TYPE_10__ {scalar_t__ (* receive ) (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ * const,size_t const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;} ;
struct TYPE_11__ {TYPE_1__ m; } ;
typedef  int /*<<< orphan*/  MYSQLND_VIO ;
typedef  int /*<<< orphan*/  MYSQLND_STATS ;
typedef  TYPE_3__ MYSQLND_PFC ;
typedef  TYPE_4__ MYSQLND_PACKET_HEADER ;
typedef  int /*<<< orphan*/  MYSQLND_ERROR_INFO ;
typedef  int /*<<< orphan*/  MYSQLND_CONNECTION_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_QUIT_SENT ; 
 int /*<<< orphan*/  CR_SERVER_GONE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ * const,size_t const) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FAIL ; 
 scalar_t__ MYSQLND_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ PASS ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UNKNOWN_SQLSTATE ; 
 scalar_t__ FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mysqlnd_server_gone ; 
 int /*<<< orphan*/ * packet_type_to_statistic_byte_count ; 
 int /*<<< orphan*/ * packet_type_to_statistic_packet_count ; 
 scalar_t__ FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ * const,size_t const,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum_func_status
FUNC9(MYSQLND_PACKET_HEADER * packet_header,
									MYSQLND_PFC * pfc,
									MYSQLND_VIO * vio,
									MYSQLND_STATS * stats,
									MYSQLND_ERROR_INFO * error_info,
									MYSQLND_CONNECTION_STATE * connection_state,
									zend_uchar * const buf, const size_t buf_size,
									const char * const packet_type_as_text,
									enum mysqlnd_packet_type packet_type)
{
	FUNC0("mysqlnd_read_packet_header_and_body");
	FUNC2("buf=%p size=%u", buf, buf_size);
	if (FAIL == FUNC7(pfc, vio, packet_header, stats, error_info)) {
		FUNC6(connection_state, CONN_QUIT_SENT);
		FUNC5(error_info, CR_SERVER_GONE_ERROR, UNKNOWN_SQLSTATE, mysqlnd_server_gone);
		FUNC1("Can't read %s's header", packet_type_as_text);
		FUNC3(FAIL);
	}
	if (buf_size < packet_header->size) {
		FUNC1("Packet buffer %u wasn't big enough %u, %u bytes will be unread",
					buf_size, packet_header->size, packet_header->size - buf_size);
		FUNC3(FAIL);
	}
	if (FAIL == pfc->data->m.receive(pfc, vio, buf, packet_header->size, stats, error_info)) {
		FUNC6(connection_state, CONN_QUIT_SENT);
		FUNC5(error_info, CR_SERVER_GONE_ERROR, UNKNOWN_SQLSTATE, mysqlnd_server_gone);
		FUNC1("Empty '%s' packet body", packet_type_as_text);
		FUNC3(FAIL);
	}
	FUNC4(stats, packet_type_to_statistic_byte_count[packet_type],
										MYSQLND_HEADER_SIZE + packet_header->size,
										packet_type_to_statistic_packet_count[packet_type],
										1);
	FUNC3(PASS);
}