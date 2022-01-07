
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_43__ TYPE_9__ ;
typedef struct TYPE_42__ TYPE_8__ ;
typedef struct TYPE_41__ TYPE_7__ ;
typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_30__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_25__ ;
typedef struct TYPE_33__ TYPE_1__ ;
typedef struct TYPE_32__ TYPE_12__ ;
typedef struct TYPE_31__ TYPE_10__ ;


typedef int zend_bool ;
typedef int enum_mysqlnd_collected_stats ;
typedef scalar_t__ enum_func_status ;
struct TYPE_40__ {scalar_t__ (* read_result_metadata ) (TYPE_9__*,TYPE_12__*) ;int (* free_result_contents ) (TYPE_9__*) ;} ;
struct TYPE_43__ {TYPE_6__ m; } ;
struct TYPE_42__ {TYPE_7__* data; } ;
struct TYPE_41__ {int state; TYPE_9__* result; int stmt_id; } ;
struct TYPE_39__ {TYPE_9__* (* result_init ) (int) ;} ;
struct TYPE_38__ {int l; int s; } ;
struct TYPE_37__ {int l; int s; } ;
struct TYPE_36__ {int error; scalar_t__ error_no; } ;
struct TYPE_33__ {int (* init_eof_packet ) (TYPE_10__*) ;int (* init_rset_header_packet ) (TYPE_10__*) ;} ;
struct TYPE_35__ {TYPE_1__ m; } ;
struct TYPE_34__ {scalar_t__ error_no; } ;
struct TYPE_32__ {int field_count; int stats; int upsert_status; TYPE_9__* current_result; TYPE_2__* payload_decoder_factory; TYPE_25__* error_info; TYPE_5__* m; int state; int last_query_type; TYPE_4__ last_message; } ;
struct TYPE_31__ {int field_count; int server_status; int warning_count; TYPE_3__ info_or_local_file; int last_insert_id; int affected_rows; TYPE_30__ error_info; } ;
typedef TYPE_7__ MYSQLND_STMT_DATA ;
typedef TYPE_8__ MYSQLND_STMT ;
typedef TYPE_9__ MYSQLND_RES ;
typedef TYPE_10__ MYSQLND_PACKET_RSET_HEADER ;
typedef TYPE_10__ MYSQLND_PACKET_EOF ;
typedef TYPE_12__ MYSQLND_CONN_DATA ;


 int CONN_FETCHING_DATA ;
 int CONN_NEXT_RESULT_PENDING ;
 int CONN_QUIT_SENT ;
 int CONN_READY ;
 int CONN_SENDING_LOAD_DATA ;
 int COPY_CLIENT_ERROR (TYPE_25__*,TYPE_30__) ;
 scalar_t__ CR_SERVER_GONE_ERROR ;
 int DBG_ENTER (char*) ;
 int DBG_ERR (char*) ;
 int DBG_ERR_FMT (char*,int ) ;
 int DBG_INF (char*) ;
 int DBG_INF_FMT (char*,int ,...) ;
 int DBG_RETURN (scalar_t__) ;
 int E_WARNING ;
 scalar_t__ FAIL ;
 int MYSQLND_INC_CONN_STATISTIC (int ,int ) ;

 int MYSQLND_STMT_INITTED ;
 int PACKET_FREE (TYPE_10__*) ;
 scalar_t__ PACKET_READ (TYPE_12__*,TYPE_10__*) ;
 scalar_t__ PASS ;
 int QUERY_LOAD_LOCAL ;
 int QUERY_SELECT ;
 int QUERY_UPSERT ;
 int SERVER_MORE_RESULTS_EXISTS ;
 int SERVER_QUERY_NO_GOOD_INDEX_USED ;
 int SERVER_QUERY_NO_INDEX_USED ;
 int SERVER_QUERY_WAS_SLOW ;
 int SET_CONNECTION_STATE (int *,int ) ;
 int SET_EMPTY_MESSAGE (int ,int ) ;
 int SET_NEW_MESSAGE (int ,int ,int ,int ) ;
 int SET_OOM_ERROR (TYPE_25__*) ;
 int STAT_BAD_INDEX_USED ;
 int STAT_LAST ;
 int STAT_NON_RSET_QUERY ;
 int STAT_NO_INDEX_USED ;
 int STAT_QUERY_WAS_SLOW ;
 int STAT_RSET_QUERY ;
 int TRUE ;
 int UPSERT_STATUS_GET_SERVER_STATUS (int ) ;
 int UPSERT_STATUS_RESET (int ) ;
 int UPSERT_STATUS_SET_AFFECTED_ROWS (int ,int ) ;
 int UPSERT_STATUS_SET_AFFECTED_ROWS_TO_ERROR (int ) ;
 int UPSERT_STATUS_SET_LAST_INSERT_ID (int ,int ) ;
 int UPSERT_STATUS_SET_SERVER_STATUS (int ,int) ;
 int UPSERT_STATUS_SET_WARNINGS (int ,int ) ;
 int memset (TYPE_7__*,int ,int) ;
 int mnd_efree (TYPE_9__*) ;
 scalar_t__ mysqlnd_handle_local_infile (TYPE_12__*,int ,int *) ;
 int php_error_docref (int *,int ,char*) ;
 int stub1 (TYPE_10__*) ;
 TYPE_9__* stub2 (int) ;
 TYPE_9__* stub3 (int) ;
 scalar_t__ stub4 (TYPE_9__*,TYPE_12__*) ;
 int stub5 (TYPE_10__*) ;
 int stub6 (TYPE_9__*) ;

enum_func_status
mysqlnd_query_read_result_set_header(MYSQLND_CONN_DATA * conn, MYSQLND_STMT * s)
{
 enum_func_status ret;
 MYSQLND_STMT_DATA * stmt = s ? s->data : ((void*)0);
 MYSQLND_PACKET_RSET_HEADER rset_header;
 MYSQLND_PACKET_EOF fields_eof;

 DBG_ENTER("mysqlnd_query_read_result_set_header");
 DBG_INF_FMT("stmt=%lu", stmt? stmt->stmt_id:0);

 ret = FAIL;
 do {
  conn->payload_decoder_factory->m.init_rset_header_packet(&rset_header);
  UPSERT_STATUS_SET_AFFECTED_ROWS_TO_ERROR(conn->upsert_status);

  if (FAIL == (ret = PACKET_READ(conn, &rset_header))) {
   if (conn->error_info->error_no != CR_SERVER_GONE_ERROR) {
    php_error_docref(((void*)0), E_WARNING, "Error reading result set's header");
   }
   break;
  }

  if (rset_header.error_info.error_no) {
   UPSERT_STATUS_SET_SERVER_STATUS(conn->upsert_status, UPSERT_STATUS_GET_SERVER_STATUS(conn->upsert_status) & ~SERVER_MORE_RESULTS_EXISTS);




   COPY_CLIENT_ERROR(conn->error_info, rset_header.error_info);
   ret = FAIL;
   DBG_ERR_FMT("error=%s", rset_header.error_info.error);

   SET_CONNECTION_STATE(&conn->state, CONN_READY);
   break;
  }
  conn->error_info->error_no = 0;

  switch (rset_header.field_count) {
   case 128: {
    zend_bool is_warning;
    DBG_INF("LOAD DATA");
    conn->last_query_type = QUERY_LOAD_LOCAL;
    conn->field_count = 0;
    SET_CONNECTION_STATE(&conn->state, CONN_SENDING_LOAD_DATA);
    ret = mysqlnd_handle_local_infile(conn, rset_header.info_or_local_file.s, &is_warning);
    SET_CONNECTION_STATE(&conn->state, (ret == PASS || is_warning == TRUE)? CONN_READY:CONN_QUIT_SENT);
    MYSQLND_INC_CONN_STATISTIC(conn->stats, STAT_NON_RSET_QUERY);
    break;
   }
   case 0:
    DBG_INF("UPSERT");
    conn->last_query_type = QUERY_UPSERT;
    conn->field_count = rset_header.field_count;
    UPSERT_STATUS_RESET(conn->upsert_status);
    UPSERT_STATUS_SET_WARNINGS(conn->upsert_status, rset_header.warning_count);
    UPSERT_STATUS_SET_SERVER_STATUS(conn->upsert_status, rset_header.server_status);
    UPSERT_STATUS_SET_AFFECTED_ROWS(conn->upsert_status, rset_header.affected_rows);
    UPSERT_STATUS_SET_LAST_INSERT_ID(conn->upsert_status, rset_header.last_insert_id);
    SET_NEW_MESSAGE(conn->last_message.s, conn->last_message.l,
        rset_header.info_or_local_file.s, rset_header.info_or_local_file.l);

    if (UPSERT_STATUS_GET_SERVER_STATUS(conn->upsert_status) & SERVER_MORE_RESULTS_EXISTS) {
     SET_CONNECTION_STATE(&conn->state, CONN_NEXT_RESULT_PENDING);
    } else {
     SET_CONNECTION_STATE(&conn->state, CONN_READY);
    }
    ret = PASS;
    MYSQLND_INC_CONN_STATISTIC(conn->stats, STAT_NON_RSET_QUERY);
    break;
   default: do {
    MYSQLND_RES * result;
    enum_mysqlnd_collected_stats statistic = STAT_LAST;

    DBG_INF("Result set pending");
    SET_EMPTY_MESSAGE(conn->last_message.s, conn->last_message.l);

    MYSQLND_INC_CONN_STATISTIC(conn->stats, STAT_RSET_QUERY);
    UPSERT_STATUS_RESET(conn->upsert_status);

    UPSERT_STATUS_SET_AFFECTED_ROWS_TO_ERROR(conn->upsert_status);

    conn->last_query_type = QUERY_SELECT;
    SET_CONNECTION_STATE(&conn->state, CONN_FETCHING_DATA);

    conn->field_count = rset_header.field_count;
    if (!stmt) {
     result = conn->current_result = conn->m->result_init(rset_header.field_count);
    } else {
     if (!stmt->result) {
      DBG_INF("This is 'SHOW'/'EXPLAIN'-like query.");





      result = stmt->result = conn->m->result_init(rset_header.field_count);
     } else {
     }
     result = stmt->result;
    }
    if (!result) {
     SET_OOM_ERROR(conn->error_info);
     ret = FAIL;
     break;
    }

    if (FAIL == (ret = result->m.read_result_metadata(result, conn))) {

     if (!stmt && conn->current_result) {
      mnd_efree(conn->current_result);
      conn->current_result = ((void*)0);
     }
     DBG_ERR("Error occurred while reading metadata");
     break;
    }


    conn->payload_decoder_factory->m.init_eof_packet(&fields_eof);
    if (FAIL == (ret = PACKET_READ(conn, &fields_eof))) {
     DBG_ERR("Error occurred while reading the EOF packet");
     result->m.free_result_contents(result);
     if (!stmt) {
      conn->current_result = ((void*)0);
     } else {
      stmt->result = ((void*)0);





      memset(stmt, 0, sizeof(*stmt));
      stmt->state = MYSQLND_STMT_INITTED;
     }
    } else {
     DBG_INF_FMT("warnings=%u server_status=%u", fields_eof.warning_count, fields_eof.server_status);
     UPSERT_STATUS_SET_WARNINGS(conn->upsert_status, fields_eof.warning_count);







     UPSERT_STATUS_SET_SERVER_STATUS(conn->upsert_status, fields_eof.server_status);
     if (fields_eof.server_status & SERVER_QUERY_NO_GOOD_INDEX_USED) {
      statistic = STAT_BAD_INDEX_USED;
     } else if (fields_eof.server_status & SERVER_QUERY_NO_INDEX_USED) {
      statistic = STAT_NO_INDEX_USED;
     } else if (fields_eof.server_status & SERVER_QUERY_WAS_SLOW) {
      statistic = STAT_QUERY_WAS_SLOW;
     }
     MYSQLND_INC_CONN_STATISTIC(conn->stats, statistic);
    }
   } while (0);
   PACKET_FREE(&fields_eof);
   break;
  }
 } while (0);
 PACKET_FREE(&rset_header);

 DBG_INF(ret == PASS? "PASS":"FAIL");
 DBG_RETURN(ret);
}
