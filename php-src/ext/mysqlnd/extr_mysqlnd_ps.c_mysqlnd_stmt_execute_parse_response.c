
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int enum_mysqlnd_parse_exec_response_type ;
typedef scalar_t__ enum_func_status ;
struct TYPE_21__ {scalar_t__ last_query_type; int stats; int state; scalar_t__ field_count; TYPE_1__* m; int upsert_status; int * error_info; } ;
struct TYPE_20__ {TYPE_5__* m; TYPE_6__* data; } ;
struct TYPE_19__ {int send_types_to_server; int flags; int upsert_status; int default_rset_handler; int cursor_exists; int state; scalar_t__ field_count; TYPE_4__* result; int * error_info; TYPE_8__* conn; } ;
struct TYPE_18__ {int (* free_stmt_content ) (TYPE_7__* const) ;int use_result; int store_result; } ;
struct TYPE_17__ {TYPE_3__* unbuf; TYPE_2__* stored_data; scalar_t__ field_count; scalar_t__ conn; int type; } ;
struct TYPE_16__ {int * lengths; } ;
struct TYPE_15__ {int * lengths; } ;
struct TYPE_14__ {scalar_t__ (* query_read_result_set_header ) (TYPE_8__*,TYPE_7__* const) ;scalar_t__ (* get_reference ) (TYPE_8__*) ;} ;
typedef TYPE_6__ MYSQLND_STMT_DATA ;
typedef TYPE_7__ MYSQLND_STMT ;
typedef TYPE_8__ MYSQLND_CONN_DATA ;


 int CONN_QUERY_SENT ;
 scalar_t__ CONN_QUIT_SENT ;
 int CONN_READY ;
 int COPY_CLIENT_ERROR (int *,int ) ;
 int CURSOR_TYPE_READ_ONLY ;
 int DBG_ENTER (char*) ;
 int DBG_INF (char*) ;
 int DBG_INF_FMT (char*,int,int) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 scalar_t__ GET_CONNECTION_STATE (int *) ;
 int MYSQLND_INC_CONN_STATISTIC_W_VALUE (int ,int ,scalar_t__) ;
 int MYSQLND_PARSE_EXEC_RESPONSE_IMPLICIT_OUT_VARIABLES ;
 int MYSQLND_RES_PS_BUF ;
 int MYSQLND_STMT_EXECUTED ;
 int MYSQLND_STMT_PREPARED ;
 int MYSQLND_STMT_WAITING_USE_OR_STORE ;
 scalar_t__ PASS ;
 scalar_t__ QUERY_LOAD_LOCAL ;
 scalar_t__ QUERY_UPSERT ;
 int SERVER_PS_OUT_PARAMS ;
 int SERVER_STATUS_CURSOR_EXISTS ;
 int SET_CONNECTION_STATE (int *,int ) ;
 int SET_EMPTY_ERROR (int *) ;
 int STAT_ROWS_AFFECTED_PS ;
 int TRUE ;
 scalar_t__ UPSERT_STATUS_GET_AFFECTED_ROWS (int ) ;
 int UPSERT_STATUS_GET_LAST_INSERT_ID (int ) ;
 int UPSERT_STATUS_GET_SERVER_STATUS (int ) ;
 int UPSERT_STATUS_GET_WARNINGS (int ) ;
 int UPSERT_STATUS_RESET (int ) ;
 int UPSERT_STATUS_SET_AFFECTED_ROWS (int ,scalar_t__) ;
 int UPSERT_STATUS_SET_LAST_INSERT_ID (int ,int ) ;
 int UPSERT_STATUS_SET_SERVER_STATUS (int ,int) ;
 int UPSERT_STATUS_SET_WARNINGS (int ,int ) ;
 scalar_t__ stub1 (TYPE_8__*,TYPE_7__* const) ;
 scalar_t__ stub2 (TYPE_8__*) ;
 int stub3 (TYPE_7__* const) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_execute_parse_response(MYSQLND_STMT * const s, enum_mysqlnd_parse_exec_response_type type)
{
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 MYSQLND_CONN_DATA * conn = stmt? stmt->conn : ((void*)0);
 enum_func_status ret;

 DBG_ENTER("mysqlnd_stmt_execute_parse_response");
 if (!stmt || !conn) {
  DBG_RETURN(FAIL);
 }
 SET_CONNECTION_STATE(&conn->state, CONN_QUERY_SENT);

 ret = conn->m->query_read_result_set_header(conn, s);
 if (ret == FAIL) {
  COPY_CLIENT_ERROR(stmt->error_info, *conn->error_info);
  UPSERT_STATUS_RESET(stmt->upsert_status);
  UPSERT_STATUS_SET_AFFECTED_ROWS(stmt->upsert_status, UPSERT_STATUS_GET_AFFECTED_ROWS(conn->upsert_status));
  if (GET_CONNECTION_STATE(&conn->state) == CONN_QUIT_SENT) {

  }
  stmt->state = MYSQLND_STMT_PREPARED;
  stmt->send_types_to_server = 1;
 } else {







  SET_EMPTY_ERROR(stmt->error_info);
  SET_EMPTY_ERROR(conn->error_info);
  UPSERT_STATUS_SET_WARNINGS(stmt->upsert_status, UPSERT_STATUS_GET_WARNINGS(conn->upsert_status));
  UPSERT_STATUS_SET_AFFECTED_ROWS(stmt->upsert_status, UPSERT_STATUS_GET_AFFECTED_ROWS(conn->upsert_status));
  UPSERT_STATUS_SET_SERVER_STATUS(stmt->upsert_status, UPSERT_STATUS_GET_SERVER_STATUS(conn->upsert_status));
  UPSERT_STATUS_SET_LAST_INSERT_ID(stmt->upsert_status, UPSERT_STATUS_GET_LAST_INSERT_ID(conn->upsert_status));

  stmt->state = MYSQLND_STMT_EXECUTED;
  if (conn->last_query_type == QUERY_UPSERT || conn->last_query_type == QUERY_LOAD_LOCAL) {
   DBG_INF("PASS");
   DBG_RETURN(PASS);
  }

  stmt->result->type = MYSQLND_RES_PS_BUF;
  if (!stmt->result->conn) {




   stmt->result->conn = conn->m->get_reference(conn);
  }


  stmt->field_count = stmt->result->field_count = conn->field_count;
  if (stmt->result->stored_data) {
   stmt->result->stored_data->lengths = ((void*)0);
  } else if (stmt->result->unbuf) {
   stmt->result->unbuf->lengths = ((void*)0);
  }
  if (stmt->field_count) {
   stmt->state = MYSQLND_STMT_WAITING_USE_OR_STORE;





   DBG_INF_FMT("server_status=%u cursor=%u", UPSERT_STATUS_GET_SERVER_STATUS(stmt->upsert_status),
      UPSERT_STATUS_GET_SERVER_STATUS(stmt->upsert_status) & SERVER_STATUS_CURSOR_EXISTS);

   if (UPSERT_STATUS_GET_SERVER_STATUS(stmt->upsert_status) & SERVER_STATUS_CURSOR_EXISTS) {
    DBG_INF("cursor exists");
    stmt->cursor_exists = TRUE;
    SET_CONNECTION_STATE(&conn->state, CONN_READY);

    stmt->default_rset_handler = s->m->use_result;
    DBG_INF("use_result");
   } else if (stmt->flags & CURSOR_TYPE_READ_ONLY) {
    DBG_INF("asked for cursor but got none");
    stmt->default_rset_handler = s->m->store_result;
    DBG_INF("store_result");
   } else {
    DBG_INF("no cursor");

    stmt->default_rset_handler = s->m->use_result;
    DBG_INF("use_result");
   }
  }
 }

 if (UPSERT_STATUS_GET_SERVER_STATUS(stmt->upsert_status) & SERVER_PS_OUT_PARAMS) {
  s->m->free_stmt_content(s);
  DBG_INF("PS OUT Variable RSet, skipping");

  ret = mysqlnd_stmt_execute_parse_response(s, MYSQLND_PARSE_EXEC_RESPONSE_IMPLICIT_OUT_VARIABLES);
 }


 DBG_INF_FMT("server_status=%u cursor=%u", UPSERT_STATUS_GET_SERVER_STATUS(stmt->upsert_status), UPSERT_STATUS_GET_SERVER_STATUS(stmt->upsert_status) & SERVER_STATUS_CURSOR_EXISTS);

 if (ret == PASS && conn->last_query_type == QUERY_UPSERT && UPSERT_STATUS_GET_AFFECTED_ROWS(stmt->upsert_status)) {
  MYSQLND_INC_CONN_STATISTIC_W_VALUE(conn->stats, STAT_ROWS_AFFECTED_PS, UPSERT_STATUS_GET_AFFECTED_ROWS(stmt->upsert_status));
 }

 DBG_INF(ret == PASS? "PASS":"FAIL");
 DBG_RETURN(ret);
}
