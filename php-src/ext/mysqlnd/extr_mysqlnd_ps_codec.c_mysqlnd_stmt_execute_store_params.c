
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
typedef int zend_uchar ;
typedef scalar_t__ enum_func_status ;
struct TYPE_10__ {TYPE_1__* data; } ;
struct TYPE_9__ {int param_count; int send_types_to_server; int error_info; } ;
typedef TYPE_1__ MYSQLND_STMT_DATA ;
typedef TYPE_2__ MYSQLND_STMT ;


 int DBG_ENTER (char*) ;
 int DBG_INF_FMT (char*,char*) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 scalar_t__ PASS ;
 int SET_OOM_ERROR (int ) ;
 int int1store (int *,int) ;
 int memset (int *,int ,unsigned int) ;
 scalar_t__ mysqlnd_stmt_execute_calculate_param_values_size (TYPE_1__*,int **,size_t*) ;
 scalar_t__ mysqlnd_stmt_execute_check_n_enlarge_buffer (int **,int **,size_t*,int *,size_t) ;
 scalar_t__ mysqlnd_stmt_execute_prepare_param_types (TYPE_1__*,int **,int*) ;
 int mysqlnd_stmt_execute_store_param_values (TYPE_1__*,int *,int *,int **,size_t) ;
 int mysqlnd_stmt_execute_store_types (TYPE_1__*,int *,int **) ;
 int mysqlnd_stmt_free_copies (TYPE_1__*,int *) ;

__attribute__((used)) static enum_func_status
mysqlnd_stmt_execute_store_params(MYSQLND_STMT * s, zend_uchar **buf, zend_uchar **p, size_t *buf_len )
{
 MYSQLND_STMT_DATA * stmt = s->data;
 zend_uchar * provided_buffer = *buf;
 size_t data_size = 0;
 zval *copies = ((void*)0);
 enum_func_status ret = FAIL;
 int resend_types_next_time = 0;
 size_t null_byte_offset;

 DBG_ENTER("mysqlnd_stmt_execute_store_params");

 {
  unsigned int null_count = (stmt->param_count + 7) / 8;
  if (FAIL == mysqlnd_stmt_execute_check_n_enlarge_buffer(buf, p, buf_len, provided_buffer, null_count)) {
   SET_OOM_ERROR(stmt->error_info);
   goto end;
  }

  null_byte_offset = *p - *buf;
  memset(*p, 0, null_count);
  *p += null_count;
 }
 if (FAIL == mysqlnd_stmt_execute_prepare_param_types(stmt, &copies, &resend_types_next_time)) {
  goto end;
 }

 int1store(*p, stmt->send_types_to_server);
 (*p)++;

 if (stmt->send_types_to_server) {
  if (FAIL == mysqlnd_stmt_execute_check_n_enlarge_buffer(buf, p, buf_len, provided_buffer, stmt->param_count * 2)) {
   SET_OOM_ERROR(stmt->error_info);
   goto end;
  }
  mysqlnd_stmt_execute_store_types(stmt, copies, p);
 }

 stmt->send_types_to_server = resend_types_next_time;



 if (FAIL == mysqlnd_stmt_execute_calculate_param_values_size(stmt, &copies, &data_size)) {
  goto end;
 }


 if (FAIL == mysqlnd_stmt_execute_check_n_enlarge_buffer(buf, p, buf_len, provided_buffer, data_size)) {
  SET_OOM_ERROR(stmt->error_info);
  goto end;
 }


 mysqlnd_stmt_execute_store_param_values(stmt, copies, *buf, p, null_byte_offset);

 ret = PASS;
end:
 mysqlnd_stmt_free_copies(stmt, copies);

 DBG_INF_FMT("ret=%s", ret == PASS? "PASS":"FAIL");
 DBG_RETURN(ret);
}
