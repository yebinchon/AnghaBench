
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef scalar_t__ zend_bool ;
typedef size_t uint64_t ;
typedef scalar_t__ enum_func_status ;
struct TYPE_23__ {int * data_cursor; int * data; } ;
struct TYPE_22__ {unsigned int field_count; TYPE_11__* fields; } ;
struct TYPE_21__ {TYPE_6__* data; } ;
struct TYPE_20__ {long stmt_id; TYPE_4__* result_bind; scalar_t__ update_max_length; } ;
struct TYPE_15__ {scalar_t__ (* row_decoder ) (int *,int *,unsigned int,TYPE_11__*,int ,int ) ;} ;
struct TYPE_19__ {scalar_t__ type; unsigned int row_count; int initialized_rows; int * row_buffers; TYPE_1__ m; } ;
struct TYPE_18__ {scalar_t__ bound; int zv; } ;
struct TYPE_17__ {int stats; TYPE_2__* options; } ;
struct TYPE_16__ {int int_and_float_native; } ;
struct TYPE_14__ {scalar_t__ max_length; } ;
struct TYPE_13__ {unsigned int field_count; TYPE_5__* stored_data; TYPE_3__* conn; TYPE_8__* meta; } ;
typedef TYPE_6__ MYSQLND_STMT_DATA ;
typedef TYPE_7__ MYSQLND_STMT ;
typedef TYPE_8__ MYSQLND_RES_METADATA ;
typedef TYPE_9__ MYSQLND_RES_BUFFERED_ZVAL ;
typedef TYPE_10__ MYSQLND_RES ;


 int DBG_ENTER (char*) ;
 int DBG_INF (char*) ;
 int DBG_INF_FMT (char*,unsigned int,...) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 scalar_t__ FALSE ;
 scalar_t__ IS_STRING ;
 scalar_t__ MYSQLND_BUFFERED_TYPE_C ;
 scalar_t__ MYSQLND_BUFFERED_TYPE_ZVAL ;
 int MYSQLND_INC_GLOBAL_STATISTIC (int ) ;
 scalar_t__ PASS ;
 int STAT_ROWS_FETCHED_FROM_CLIENT_PS_BUF ;
 scalar_t__ TRUE ;
 int ZEND_TRY_ASSIGN_COPY_EX (int *,int *,int ) ;
 scalar_t__ Z_ISUNDEF (int ) ;
 scalar_t__ Z_STRLEN (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 scalar_t__ stub1 (int *,int *,unsigned int,TYPE_11__*,int ,int ) ;

enum_func_status
mysqlnd_stmt_fetch_row_buffered(MYSQLND_RES * result, void * param, const unsigned int flags, zend_bool * fetched_anything)
{
 MYSQLND_STMT * s = (MYSQLND_STMT *) param;
 MYSQLND_STMT_DATA * stmt = s? s->data : ((void*)0);
 const MYSQLND_RES_METADATA * const meta = result->meta;
 unsigned int field_count = meta->field_count;

 DBG_ENTER("mysqlnd_stmt_fetch_row_buffered");
 *fetched_anything = FALSE;
 DBG_INF_FMT("stmt=%lu", stmt != ((void*)0) ? stmt->stmt_id : 0L);


 if (result->stored_data->type == MYSQLND_BUFFERED_TYPE_ZVAL) {
  MYSQLND_RES_BUFFERED_ZVAL * set = (MYSQLND_RES_BUFFERED_ZVAL *) result->stored_data;
  if (set->data_cursor &&
   (set->data_cursor - set->data) < (result->stored_data->row_count * field_count))
  {

   if (stmt->result_bind) {
    unsigned int i;
    zval *current_row = set->data_cursor;

    if (Z_ISUNDEF(current_row[0])) {
     uint64_t row_num = (set->data_cursor - set->data) / field_count;
     enum_func_status rc = result->stored_data->m.row_decoder(&result->stored_data->row_buffers[row_num],
             current_row,
             meta->field_count,
             meta->fields,
             result->conn->options->int_and_float_native,
             result->conn->stats);
     if (PASS != rc) {
      DBG_RETURN(FAIL);
     }
     result->stored_data->initialized_rows++;
     if (stmt->update_max_length) {
      for (i = 0; i < result->field_count; i++) {





       if (Z_TYPE(current_row[i]) == IS_STRING) {
        zend_ulong len = Z_STRLEN(current_row[i]);
        if (meta->fields[i].max_length < len) {
         meta->fields[i].max_length = len;
        }
       }
      }
     }
    }

    for (i = 0; i < result->field_count; i++) {

     zval *resultzv = &stmt->result_bind[i].zv;
     if (stmt->result_bind[i].bound == TRUE) {
      DBG_INF_FMT("i=%u type=%u", i, Z_TYPE(current_row[i]));
      ZEND_TRY_ASSIGN_COPY_EX(resultzv, &current_row[i], 0);
     }
    }
   }
   set->data_cursor += field_count;
   *fetched_anything = TRUE;

   MYSQLND_INC_GLOBAL_STATISTIC(STAT_ROWS_FETCHED_FROM_CLIENT_PS_BUF);
   DBG_INF("row fetched");
  } else {
   set->data_cursor = ((void*)0);
   DBG_INF("no more data");
  }
 } else if (result->stored_data->type == MYSQLND_BUFFERED_TYPE_C) {

 }
 DBG_INF("PASS");
 DBG_RETURN(PASS);
}
