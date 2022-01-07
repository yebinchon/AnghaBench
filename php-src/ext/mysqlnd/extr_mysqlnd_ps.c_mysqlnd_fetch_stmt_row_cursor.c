
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_16__ ;
typedef struct TYPE_26__ TYPE_15__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef int zend_uchar ;
typedef scalar_t__ zend_bool ;
typedef scalar_t__ enum_func_status ;
typedef int buf ;
struct TYPE_36__ {unsigned int field_count; TYPE_16__* unbuf; TYPE_8__* meta; int conn; } ;
struct TYPE_35__ {TYPE_1__* fields; } ;
struct TYPE_34__ {TYPE_6__* data; } ;
struct TYPE_33__ {int stmt_id; scalar_t__ state; int upsert_status; TYPE_5__* result_bind; int * error_info; TYPE_12__* conn; } ;
struct TYPE_32__ {scalar_t__ bound; int zv; } ;
struct TYPE_31__ {int int_and_float_native; } ;
struct TYPE_30__ {scalar_t__ (* row_decoder ) (TYPE_15__*,int *,int ,int ,int ,int ) ;int (* free_last_data ) (TYPE_16__*,int ) ;} ;
struct TYPE_29__ {scalar_t__ (* stmt_fetch ) (TYPE_12__*,TYPE_11__ const) ;} ;
struct TYPE_28__ {scalar_t__ max_length; } ;
struct TYPE_26__ {int * ptr; } ;
struct TYPE_27__ {scalar_t__ eof_reached; int row_count; int * last_row_data; TYPE_15__ last_row_buffer; TYPE_3__ m; TYPE_10__* row_packet; } ;
struct TYPE_25__ {int (* free_chunk ) (TYPE_13__*,int *) ;} ;
struct TYPE_24__ {int upsert_status; int stats; TYPE_4__* options; int * error_info; TYPE_2__* command; } ;
struct TYPE_23__ {char const* member_0; int member_1; } ;
struct TYPE_22__ {int warning_count; int server_status; scalar_t__ eof; TYPE_15__ row_buffer; TYPE_13__* result_set_memory_pool; int fields_metadata; int field_count; int * fields; scalar_t__ skip_extraction; } ;
typedef TYPE_6__ MYSQLND_STMT_DATA ;
typedef TYPE_7__ MYSQLND_STMT ;
typedef TYPE_8__ MYSQLND_RES_METADATA ;
typedef TYPE_9__ MYSQLND_RES ;
typedef TYPE_10__ MYSQLND_PACKET_ROW ;
typedef TYPE_11__ MYSQLND_CSTRING ;
typedef TYPE_12__ MYSQLND_CONN_DATA ;


 int COPY_CLIENT_ERROR (int *,int ) ;
 int CR_COMMANDS_OUT_OF_SYNC ;
 int DBG_ENTER (char*) ;
 int DBG_ERR (char*) ;
 int DBG_INF (char*) ;
 int DBG_INF_FMT (char*,...) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 scalar_t__ FALSE ;
 scalar_t__ IS_STRING ;
 int MYSQLND_INC_CONN_STATISTIC (int ,int ) ;
 int MYSQLND_STMT_ID_LENGTH ;
 scalar_t__ MYSQLND_STMT_USER_FETCHING ;
 scalar_t__ PACKET_READ (TYPE_12__*,TYPE_10__*) ;
 scalar_t__ PASS ;
 int SET_CLIENT_ERROR (int *,int ,int ,int ) ;
 int SET_EMPTY_ERROR (int *) ;
 int STAT_ROWS_FETCHED_FROM_CLIENT_PS_CURSOR ;
 scalar_t__ TRUE ;
 int UNKNOWN_SQLSTATE ;
 int UPSERT_STATUS_RESET (int ) ;
 int UPSERT_STATUS_SET_SERVER_STATUS (int ,int ) ;
 int UPSERT_STATUS_SET_WARNINGS (int ,int ) ;
 int ZEND_TRY_ASSIGN_VALUE_EX (int *,int *,int ) ;
 int ZVAL_NULL (int *) ;
 int Z_REFCOUNT (int ) ;
 scalar_t__ Z_REFCOUNTED (int ) ;
 scalar_t__ Z_STRLEN_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int int4store (int *,int) ;
 int mysqlnd_out_of_sync ;
 scalar_t__ stub1 (TYPE_12__*,TYPE_11__ const) ;
 int stub2 (TYPE_16__*,int ) ;
 scalar_t__ stub3 (TYPE_15__*,int *,int ,int ,int ,int ) ;
 int stub4 (TYPE_13__*,int *) ;
 int stub5 (TYPE_13__*,int *) ;

enum_func_status
mysqlnd_fetch_stmt_row_cursor(MYSQLND_RES * result, void * param, const unsigned int flags, zend_bool * fetched_anything)
{
 enum_func_status ret;
 MYSQLND_STMT * s = (MYSQLND_STMT *) param;
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 MYSQLND_CONN_DATA * conn = stmt? stmt->conn : ((void*)0);
 zend_uchar buf[MYSQLND_STMT_ID_LENGTH + 4 ];
 MYSQLND_PACKET_ROW * row_packet;

 DBG_ENTER("mysqlnd_fetch_stmt_row_cursor");

 if (!stmt || !stmt->conn || !result || !result->conn || !result->unbuf) {
  DBG_ERR("no statement");
  DBG_RETURN(FAIL);
 }
 DBG_INF_FMT("stmt=%lu flags=%u", stmt->stmt_id, flags);

 if (stmt->state < MYSQLND_STMT_USER_FETCHING) {

  SET_CLIENT_ERROR(conn->error_info, CR_COMMANDS_OUT_OF_SYNC, UNKNOWN_SQLSTATE, mysqlnd_out_of_sync);
  DBG_ERR("command out of sync");
  DBG_RETURN(FAIL);
 }
 if (!(row_packet = result->unbuf->row_packet)) {
  DBG_RETURN(FAIL);
 }

 SET_EMPTY_ERROR(stmt->error_info);
 SET_EMPTY_ERROR(conn->error_info);

 int4store(buf, stmt->stmt_id);
 int4store(buf + MYSQLND_STMT_ID_LENGTH, 1);

 {
  const MYSQLND_CSTRING payload = {(const char*) buf, sizeof(buf)};

  ret = conn->command->stmt_fetch(conn, payload);
  if (ret == FAIL) {
   COPY_CLIENT_ERROR(stmt->error_info, *conn->error_info);
   DBG_RETURN(FAIL);
  }

 }

 row_packet->skip_extraction = stmt->result_bind? FALSE:TRUE;

 UPSERT_STATUS_RESET(stmt->upsert_status);
 if (PASS == (ret = PACKET_READ(conn, row_packet)) && !row_packet->eof) {
  const MYSQLND_RES_METADATA * const meta = result->meta;
  unsigned int i, field_count = result->field_count;

  if (!row_packet->skip_extraction) {
   result->unbuf->m.free_last_data(result->unbuf, conn->stats);

   result->unbuf->last_row_data = row_packet->fields;
   result->unbuf->last_row_buffer = row_packet->row_buffer;
   row_packet->fields = ((void*)0);
   row_packet->row_buffer.ptr = ((void*)0);

   if (PASS != result->unbuf->m.row_decoder(&result->unbuf->last_row_buffer,
           result->unbuf->last_row_data,
           row_packet->field_count,
           row_packet->fields_metadata,
           conn->options->int_and_float_native,
           conn->stats))
   {
    DBG_RETURN(FAIL);
   }


   for (i = 0; i < field_count; i++) {
    zval *resultzv = &stmt->result_bind[i].zv;
    if (stmt->result_bind[i].bound == TRUE) {
     zval *data = &result->unbuf->last_row_data[i];

     DBG_INF_FMT("i=%u bound_var=%p type=%u refc=%u", i, &stmt->result_bind[i].zv,
        Z_TYPE_P(data), Z_REFCOUNTED(stmt->result_bind[i].zv)?
           Z_REFCOUNT(stmt->result_bind[i].zv) : 0);

     if (Z_TYPE_P(data) == IS_STRING &&
       (meta->fields[i].max_length < (zend_ulong) Z_STRLEN_P(data))) {
      meta->fields[i].max_length = Z_STRLEN_P(data);
     }

     ZEND_TRY_ASSIGN_VALUE_EX(resultzv, data, 0);

     ZVAL_NULL(data);
    }
   }
  } else {
   DBG_INF("skipping extraction");






   row_packet->result_set_memory_pool->free_chunk(
    row_packet->result_set_memory_pool, row_packet->row_buffer.ptr);
   row_packet->row_buffer.ptr = ((void*)0);
  }

  ret = PACKET_READ(conn, row_packet);
  if (row_packet->row_buffer.ptr) {
   row_packet->result_set_memory_pool->free_chunk(
    row_packet->result_set_memory_pool, row_packet->row_buffer.ptr);
   row_packet->row_buffer.ptr = ((void*)0);
  }
  MYSQLND_INC_CONN_STATISTIC(conn->stats, STAT_ROWS_FETCHED_FROM_CLIENT_PS_CURSOR);

  result->unbuf->row_count++;
  *fetched_anything = TRUE;
 } else {
  *fetched_anything = FALSE;
  UPSERT_STATUS_SET_WARNINGS(stmt->upsert_status, row_packet->warning_count);
  UPSERT_STATUS_SET_WARNINGS(conn->upsert_status, row_packet->warning_count);

  UPSERT_STATUS_SET_SERVER_STATUS(stmt->upsert_status, row_packet->server_status);
  UPSERT_STATUS_SET_SERVER_STATUS(conn->upsert_status, row_packet->server_status);

  result->unbuf->eof_reached = row_packet->eof;
 }
 UPSERT_STATUS_SET_WARNINGS(stmt->upsert_status, row_packet->warning_count);
 UPSERT_STATUS_SET_WARNINGS(conn->upsert_status, row_packet->warning_count);

 UPSERT_STATUS_SET_SERVER_STATUS(stmt->upsert_status, row_packet->server_status);
 UPSERT_STATUS_SET_SERVER_STATUS(conn->upsert_status, row_packet->server_status);

 DBG_INF_FMT("ret=%s fetched=%u server_status=%u warnings=%u eof=%u",
    ret == PASS? "PASS":"FAIL", *fetched_anything,
    row_packet->server_status, row_packet->warning_count,
    result->unbuf->eof_reached);
 DBG_RETURN(ret);
}
