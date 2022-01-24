#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_43__   TYPE_9__ ;
typedef  struct TYPE_42__   TYPE_8__ ;
typedef  struct TYPE_41__   TYPE_7__ ;
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_30__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_25__ ;
typedef  struct TYPE_33__   TYPE_1__ ;
typedef  struct TYPE_32__   TYPE_12__ ;
typedef  struct TYPE_31__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_bool ;
typedef  int /*<<< orphan*/  enum_mysqlnd_collected_stats ;
typedef  scalar_t__ enum_func_status ;
struct TYPE_40__ {scalar_t__ (* read_result_metadata ) (TYPE_9__*,TYPE_12__*) ;int /*<<< orphan*/  (* free_result_contents ) (TYPE_9__*) ;} ;
struct TYPE_43__ {TYPE_6__ m; } ;
struct TYPE_42__ {TYPE_7__* data; } ;
struct TYPE_41__ {int /*<<< orphan*/  state; TYPE_9__* result; int /*<<< orphan*/  stmt_id; } ;
struct TYPE_39__ {TYPE_9__* (* result_init ) (int) ;} ;
struct TYPE_38__ {int /*<<< orphan*/  l; int /*<<< orphan*/  s; } ;
struct TYPE_37__ {int /*<<< orphan*/  l; int /*<<< orphan*/  s; } ;
struct TYPE_36__ {int /*<<< orphan*/  error; scalar_t__ error_no; } ;
struct TYPE_33__ {int /*<<< orphan*/  (* init_eof_packet ) (TYPE_10__*) ;int /*<<< orphan*/  (* init_rset_header_packet ) (TYPE_10__*) ;} ;
struct TYPE_35__ {TYPE_1__ m; } ;
struct TYPE_34__ {scalar_t__ error_no; } ;
struct TYPE_32__ {int field_count; int /*<<< orphan*/  stats; int /*<<< orphan*/  upsert_status; TYPE_9__* current_result; TYPE_2__* payload_decoder_factory; TYPE_25__* error_info; TYPE_5__* m; int /*<<< orphan*/  state; int /*<<< orphan*/  last_query_type; TYPE_4__ last_message; } ;
struct TYPE_31__ {int field_count; int server_status; int /*<<< orphan*/  warning_count; TYPE_3__ info_or_local_file; int /*<<< orphan*/  last_insert_id; int /*<<< orphan*/  affected_rows; TYPE_30__ error_info; } ;
typedef  TYPE_7__ MYSQLND_STMT_DATA ;
typedef  TYPE_8__ MYSQLND_STMT ;
typedef  TYPE_9__ MYSQLND_RES ;
typedef  TYPE_10__ MYSQLND_PACKET_RSET_HEADER ;
typedef  TYPE_10__ MYSQLND_PACKET_EOF ;
typedef  TYPE_12__ MYSQLND_CONN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_FETCHING_DATA ; 
 int /*<<< orphan*/  CONN_NEXT_RESULT_PENDING ; 
 int /*<<< orphan*/  CONN_QUIT_SENT ; 
 int /*<<< orphan*/  CONN_READY ; 
 int /*<<< orphan*/  CONN_SENDING_LOAD_DATA ; 
 int /*<<< orphan*/  FUNC0 (TYPE_25__*,TYPE_30__) ; 
 scalar_t__ CR_SERVER_GONE_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  E_WARNING ; 
 scalar_t__ FAIL ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  MYSQLND_NULL_LENGTH 128 
 int /*<<< orphan*/  MYSQLND_STMT_INITTED ; 
 int /*<<< orphan*/  FUNC8 (TYPE_10__*) ; 
 scalar_t__ FUNC9 (TYPE_12__*,TYPE_10__*) ; 
 scalar_t__ PASS ; 
 int /*<<< orphan*/  QUERY_LOAD_LOCAL ; 
 int /*<<< orphan*/  QUERY_SELECT ; 
 int /*<<< orphan*/  QUERY_UPSERT ; 
 int SERVER_MORE_RESULTS_EXISTS ; 
 int SERVER_QUERY_NO_GOOD_INDEX_USED ; 
 int SERVER_QUERY_NO_INDEX_USED ; 
 int SERVER_QUERY_WAS_SLOW ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_25__*) ; 
 int /*<<< orphan*/  STAT_BAD_INDEX_USED ; 
 int /*<<< orphan*/  STAT_LAST ; 
 int /*<<< orphan*/  STAT_NON_RSET_QUERY ; 
 int /*<<< orphan*/  STAT_NO_INDEX_USED ; 
 int /*<<< orphan*/  STAT_QUERY_WAS_SLOW ; 
 int /*<<< orphan*/  STAT_RSET_QUERY ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_9__*) ; 
 scalar_t__ FUNC23 (TYPE_12__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_10__*) ; 
 TYPE_9__* FUNC26 (int) ; 
 TYPE_9__* FUNC27 (int) ; 
 scalar_t__ FUNC28 (TYPE_9__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC29 (TYPE_10__*) ; 
 int /*<<< orphan*/  FUNC30 (TYPE_9__*) ; 

enum_func_status
FUNC31(MYSQLND_CONN_DATA * conn, MYSQLND_STMT * s)
{
	enum_func_status ret;
	MYSQLND_STMT_DATA * stmt = s ? s->data : NULL;
	MYSQLND_PACKET_RSET_HEADER rset_header;
	MYSQLND_PACKET_EOF fields_eof;

	FUNC1("mysqlnd_query_read_result_set_header");
	FUNC5("stmt=%lu", stmt? stmt->stmt_id:0);

	ret = FAIL;
	do {
		conn->payload_decoder_factory->m.init_rset_header_packet(&rset_header);
		FUNC17(conn->upsert_status);

		if (FAIL == (ret = FUNC9(conn, &rset_header))) {
			if (conn->error_info->error_no != CR_SERVER_GONE_ERROR) {
				FUNC24(NULL, E_WARNING, "Error reading result set's header");
			}
			break;
		}

		if (rset_header.error_info.error_no) {
			/*
			  Cover a protocol design error: error packet does not
			  contain the server status. Therefore, the client has no way
			  to find out whether there are more result sets of
			  a multiple-result-set statement pending. Luckily, in 5.0 an
			  error always aborts execution of a statement, wherever it is
			  a multi-statement or a stored procedure, so it should be
			  safe to unconditionally turn off the flag here.
			*/
			FUNC19(conn->upsert_status, FUNC14(conn->upsert_status) & ~SERVER_MORE_RESULTS_EXISTS);
			/*
			  This will copy the error code and the messages, as they
			  are buffers in the struct
			*/
			FUNC0(conn->error_info, rset_header.error_info);
			ret = FAIL;
			FUNC3("error=%s", rset_header.error_info.error);
			/* Return back from CONN_QUERY_SENT */
			FUNC10(&conn->state, CONN_READY);
			break;
		}
		conn->error_info->error_no = 0;

		switch (rset_header.field_count) {
			case MYSQLND_NULL_LENGTH: {	/* LOAD DATA LOCAL INFILE */
				zend_bool is_warning;
				FUNC4("LOAD DATA");
				conn->last_query_type = QUERY_LOAD_LOCAL;
				conn->field_count = 0; /* overwrite previous value, or the last value could be used and lead to bug#53503 */
				FUNC10(&conn->state, CONN_SENDING_LOAD_DATA);
				ret = FUNC23(conn, rset_header.info_or_local_file.s, &is_warning);
				FUNC10(&conn->state,  (ret == PASS || is_warning == TRUE)? CONN_READY:CONN_QUIT_SENT);
				FUNC7(conn->stats, STAT_NON_RSET_QUERY);
				break;
			}
			case 0:				/* UPSERT */
				FUNC4("UPSERT");
				conn->last_query_type = QUERY_UPSERT;
				conn->field_count = rset_header.field_count;
				FUNC15(conn->upsert_status);
				FUNC20(conn->upsert_status, rset_header.warning_count);
				FUNC19(conn->upsert_status, rset_header.server_status);
				FUNC16(conn->upsert_status, rset_header.affected_rows);
				FUNC18(conn->upsert_status, rset_header.last_insert_id);
				FUNC12(conn->last_message.s, conn->last_message.l,
								rset_header.info_or_local_file.s, rset_header.info_or_local_file.l);
				/* Result set can follow UPSERT statement, check server_status */
				if (FUNC14(conn->upsert_status) & SERVER_MORE_RESULTS_EXISTS) {
					FUNC10(&conn->state, CONN_NEXT_RESULT_PENDING);
				} else {
					FUNC10(&conn->state, CONN_READY);
				}
				ret = PASS;
				FUNC7(conn->stats, STAT_NON_RSET_QUERY);
				break;
			default: do {			/* Result set */
				MYSQLND_RES * result;
				enum_mysqlnd_collected_stats statistic = STAT_LAST;

				FUNC4("Result set pending");
				FUNC11(conn->last_message.s, conn->last_message.l);

				FUNC7(conn->stats, STAT_RSET_QUERY);
				FUNC15(conn->upsert_status);
				/* restore after zeroing */
				FUNC17(conn->upsert_status);

				conn->last_query_type = QUERY_SELECT;
				FUNC10(&conn->state, CONN_FETCHING_DATA);
				/* PS has already allocated it */
				conn->field_count = rset_header.field_count;
				if (!stmt) {
					result = conn->current_result = conn->m->result_init(rset_header.field_count);
				} else {
					if (!stmt->result) {
						FUNC4("This is 'SHOW'/'EXPLAIN'-like query.");
						/*
						  This is 'SHOW'/'EXPLAIN'-like query. Current implementation of
						  prepared statements can't send result set metadata for these queries
						  on prepare stage. Read it now.
						*/
						result = stmt->result = conn->m->result_init(rset_header.field_count);
					} else {
						/*
						  Update result set metadata if it for some reason changed between
						  prepare and execute, i.e.:
						  - in case of 'SELECT ?' we don't know column type unless data was
							supplied to mysql_stmt_execute, so updated column type is sent
							now.
						  - if data dictionary changed between prepare and execute, for
							example a table used in the query was altered.
						  Note, that now (4.1.3) we always send metadata in reply to
						  COM_STMT_EXECUTE (even if it is not necessary), so either this or
						  previous branch always works.
						*/
					}
					result = stmt->result;
				}
				if (!result) {
					FUNC13(conn->error_info);
					ret = FAIL;
					break;
				}

				if (FAIL == (ret = result->m.read_result_metadata(result, conn))) {
					/* For PS, we leave them in Prepared state */
					if (!stmt && conn->current_result) {
						FUNC22(conn->current_result);
						conn->current_result = NULL;
					}
					FUNC2("Error occurred while reading metadata");
					break;
				}

				/* Check for SERVER_STATUS_MORE_RESULTS if needed */
				conn->payload_decoder_factory->m.init_eof_packet(&fields_eof);
				if (FAIL == (ret = FUNC9(conn, &fields_eof))) {
					FUNC2("Error occurred while reading the EOF packet");
					result->m.free_result_contents(result);
					if (!stmt) {
						conn->current_result = NULL;
					} else {
						stmt->result = NULL;
						/* XXX: This will crash, because we will null also the methods.
							But seems it happens in extreme cases or doesn't. Should be fixed by exporting a function
							(from mysqlnd_driver.c?) to do the reset.
							This is done also in mysqlnd_ps.c
						*/
						FUNC21(stmt, 0, sizeof(*stmt));
						stmt->state = MYSQLND_STMT_INITTED;
					}
				} else {
					FUNC5("warnings=%u server_status=%u", fields_eof.warning_count, fields_eof.server_status);
					FUNC20(conn->upsert_status, fields_eof.warning_count);
					/*
					  If SERVER_MORE_RESULTS_EXISTS is set then this is either MULTI_QUERY or a CALL()
					  The first packet after sending the query/com_execute has the bit set only
					  in this cases. Not sure why it's a needed but it marks that the whole stream
					  will include many result sets. What actually matters are the bits set at the end
					  of every result set (the EOF packet).
					*/
					FUNC19(conn->upsert_status, fields_eof.server_status);
					if (fields_eof.server_status & SERVER_QUERY_NO_GOOD_INDEX_USED) {
						statistic = STAT_BAD_INDEX_USED;
					} else if (fields_eof.server_status & SERVER_QUERY_NO_INDEX_USED) {
						statistic = STAT_NO_INDEX_USED;
					} else if (fields_eof.server_status & SERVER_QUERY_WAS_SLOW) {
						statistic = STAT_QUERY_WAS_SLOW;
					}
					FUNC7(conn->stats, statistic);
				}
			} while (0);
			FUNC8(&fields_eof);
			break; /* switch break */
		}
	} while (0);
	FUNC8(&rset_header);

	FUNC4(ret == PASS? "PASS":"FAIL");
	FUNC6(ret);
}