
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_19__ ;
typedef struct TYPE_24__ TYPE_15__ ;
typedef struct TYPE_23__ TYPE_13__ ;
typedef struct TYPE_22__ TYPE_12__ ;
typedef struct TYPE_21__ TYPE_11__ ;
typedef struct TYPE_20__ TYPE_10__ ;


typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef scalar_t__ zend_bool ;
typedef scalar_t__ enum_func_status ;
struct TYPE_25__ {scalar_t__ error_no; } ;
struct TYPE_22__ {int * ptr; } ;
struct TYPE_34__ {int server_status; int warning_count; scalar_t__ eof; TYPE_19__ error_info; TYPE_12__ row_buffer; TYPE_11__* result_set_memory_pool; int fields_metadata; int field_count; int * fields; scalar_t__ skip_extraction; } ;
struct TYPE_33__ {unsigned int field_count; TYPE_15__* memory_pool; TYPE_13__* unbuf; TYPE_7__* meta; TYPE_10__* conn; } ;
struct TYPE_32__ {TYPE_4__* fields; } ;
struct TYPE_31__ {TYPE_5__* data; } ;
struct TYPE_30__ {int error_info; TYPE_3__* result_bind; } ;
struct TYPE_29__ {scalar_t__ max_length; } ;
struct TYPE_28__ {scalar_t__ bound; int zv; } ;
struct TYPE_27__ {int int_and_float_native; } ;
struct TYPE_26__ {scalar_t__ (* row_decoder ) (TYPE_12__*,int *,int ,int ,int ,int ) ;int (* free_last_data ) (TYPE_13__*,int ) ;} ;
struct TYPE_24__ {void* checkpoint; } ;
struct TYPE_23__ {scalar_t__ eof_reached; int row_count; int * last_row_data; TYPE_12__ last_row_buffer; TYPE_1__ m; TYPE_9__* row_packet; } ;
struct TYPE_21__ {int (* free_chunk ) (TYPE_11__*,int *) ;} ;
struct TYPE_20__ {int state; int upsert_status; int error_info; int stats; TYPE_2__* options; } ;
typedef TYPE_5__ MYSQLND_STMT_DATA ;
typedef TYPE_6__ MYSQLND_STMT ;
typedef TYPE_7__ MYSQLND_RES_METADATA ;
typedef TYPE_8__ MYSQLND_RES ;
typedef TYPE_9__ MYSQLND_PACKET_ROW ;
typedef TYPE_10__ MYSQLND_CONN_DATA ;


 scalar_t__ CONN_FETCHING_DATA ;
 int CONN_NEXT_RESULT_PENDING ;
 int CONN_READY ;
 int COPY_CLIENT_ERROR (int ,TYPE_19__) ;
 int CR_COMMANDS_OUT_OF_SYNC ;
 int DBG_ENTER (char*) ;
 int DBG_ERR (char*) ;
 int DBG_INF (char*) ;
 int DBG_INF_FMT (char*,char*,scalar_t__) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 scalar_t__ FALSE ;
 scalar_t__ GET_CONNECTION_STATE (int *) ;
 scalar_t__ IS_STRING ;
 int MYSQLND_INC_CONN_STATISTIC (int ,int ) ;
 scalar_t__ PACKET_READ (TYPE_10__*,TYPE_9__*) ;
 scalar_t__ PASS ;
 int SERVER_MORE_RESULTS_EXISTS ;
 int SET_CLIENT_ERROR (int ,int ,int ,int ) ;
 int SET_CONNECTION_STATE (int *,int ) ;
 int STAT_ROWS_FETCHED_FROM_CLIENT_PS_UNBUF ;
 scalar_t__ TRUE ;
 int UNKNOWN_SQLSTATE ;
 int UPSERT_STATUS_GET_SERVER_STATUS (int ) ;
 int UPSERT_STATUS_RESET (int ) ;
 int UPSERT_STATUS_SET_SERVER_STATUS (int ,int ) ;
 int UPSERT_STATUS_SET_WARNINGS (int ,int ) ;
 int ZEND_TRY_ASSIGN_VALUE_EX (int *,int *,int ) ;
 int ZVAL_NULL (int *) ;
 scalar_t__ Z_STRLEN_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int mysqlnd_mempool_restore_state (TYPE_15__*) ;
 int mysqlnd_mempool_save_state (TYPE_15__*) ;
 int mysqlnd_out_of_sync ;
 int stub1 (TYPE_13__*,int ) ;
 scalar_t__ stub2 (TYPE_12__*,int *,int ,int ,int ,int ) ;
 int stub3 (TYPE_11__*,int *) ;

enum_func_status
mysqlnd_stmt_fetch_row_unbuffered(MYSQLND_RES * result, void * param, const unsigned int flags, zend_bool * fetched_anything)
{
 enum_func_status ret;
 MYSQLND_STMT * s = (MYSQLND_STMT *) param;
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 MYSQLND_PACKET_ROW * row_packet;
 MYSQLND_CONN_DATA * conn = result->conn;
 const MYSQLND_RES_METADATA * const meta = result->meta;
 void *checkpoint;

 DBG_ENTER("mysqlnd_stmt_fetch_row_unbuffered");

 *fetched_anything = FALSE;

 if (result->unbuf->eof_reached) {

  DBG_INF("EOF already reached");
  DBG_RETURN(PASS);
 }
 if (GET_CONNECTION_STATE(&conn->state) != CONN_FETCHING_DATA) {
  SET_CLIENT_ERROR(conn->error_info, CR_COMMANDS_OUT_OF_SYNC, UNKNOWN_SQLSTATE, mysqlnd_out_of_sync);
  DBG_ERR("command out of sync");
  DBG_RETURN(FAIL);
 }
 if (!(row_packet = result->unbuf->row_packet)) {
  DBG_RETURN(FAIL);
 }


 row_packet->skip_extraction = stmt && stmt->result_bind? FALSE:TRUE;

 checkpoint = result->memory_pool->checkpoint;
 mysqlnd_mempool_save_state(result->memory_pool);





 if (PASS == (ret = PACKET_READ(conn, row_packet)) && !row_packet->eof) {
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
    mysqlnd_mempool_restore_state(result->memory_pool);
    result->memory_pool->checkpoint = checkpoint;
    DBG_RETURN(FAIL);
   }

   for (i = 0; i < field_count; i++) {
    zval *resultzv = &stmt->result_bind[i].zv;
    if (stmt->result_bind[i].bound == TRUE) {
     zval *data = &result->unbuf->last_row_data[i];

     if (Z_TYPE_P(data) == IS_STRING && (meta->fields[i].max_length < (zend_ulong) Z_STRLEN_P(data))){
      meta->fields[i].max_length = Z_STRLEN_P(data);
     }

     ZEND_TRY_ASSIGN_VALUE_EX(resultzv, data, 0);

     ZVAL_NULL(data);
    }
   }
   MYSQLND_INC_CONN_STATISTIC(conn->stats, STAT_ROWS_FETCHED_FROM_CLIENT_PS_UNBUF);
  } else {
   DBG_INF("skipping extraction");






   row_packet->result_set_memory_pool->free_chunk(
    row_packet->result_set_memory_pool, row_packet->row_buffer.ptr);
   row_packet->row_buffer.ptr = ((void*)0);
  }

  result->unbuf->row_count++;
  *fetched_anything = TRUE;
 } else if (ret == FAIL) {
  if (row_packet->error_info.error_no) {
   COPY_CLIENT_ERROR(conn->error_info, row_packet->error_info);
   COPY_CLIENT_ERROR(stmt->error_info, row_packet->error_info);
  }
  SET_CONNECTION_STATE(&conn->state, CONN_READY);
  result->unbuf->eof_reached = TRUE;
 } else if (row_packet->eof) {
  DBG_INF("EOF");

  result->unbuf->eof_reached = TRUE;
  UPSERT_STATUS_RESET(conn->upsert_status);
  UPSERT_STATUS_SET_WARNINGS(conn->upsert_status, row_packet->warning_count);
  UPSERT_STATUS_SET_SERVER_STATUS(conn->upsert_status, row_packet->server_status);





  if (UPSERT_STATUS_GET_SERVER_STATUS(conn->upsert_status) & SERVER_MORE_RESULTS_EXISTS) {
   SET_CONNECTION_STATE(&conn->state, CONN_NEXT_RESULT_PENDING);
  } else {
   SET_CONNECTION_STATE(&conn->state, CONN_READY);
  }
 }

 mysqlnd_mempool_restore_state(result->memory_pool);
 result->memory_pool->checkpoint = checkpoint;

 DBG_INF_FMT("ret=%s fetched_anything=%u", ret == PASS? "PASS":"FAIL", *fetched_anything);
 DBG_RETURN(ret);
}
