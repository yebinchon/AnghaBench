
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int zend_uchar ;
typedef scalar_t__ enum_func_status ;
struct TYPE_22__ {int (* free_chunk ) (TYPE_6__*,int *) ;int * (* resize_chunk ) (TYPE_6__*,int *,size_t,size_t) ;int * (* get_chunk ) (TYPE_6__*,size_t) ;} ;
struct TYPE_21__ {size_t size; } ;
struct TYPE_20__ {TYPE_2__* data; } ;
struct TYPE_19__ {int * ptr; } ;
struct TYPE_17__ {scalar_t__ (* receive ) (TYPE_4__*,int *,int *,size_t,int *,int *) ;} ;
struct TYPE_18__ {TYPE_1__ m; } ;
typedef int MYSQLND_VIO ;
typedef int MYSQLND_STATS ;
typedef TYPE_3__ MYSQLND_ROW_BUFFER ;
typedef TYPE_4__ MYSQLND_PFC ;
typedef TYPE_5__ MYSQLND_PACKET_HEADER ;
typedef TYPE_6__ MYSQLND_MEMORY_POOL ;
typedef int MYSQLND_ERROR_INFO ;


 int DBG_ENTER (char*) ;
 int DBG_ERR (char*) ;
 int DBG_RETURN (scalar_t__) ;
 int E_WARNING ;
 scalar_t__ FAIL ;
 size_t MYSQLND_MAX_PACKET_SIZE ;
 scalar_t__ PASS ;
 int SET_OOM_ERROR (int *) ;
 scalar_t__ UNEXPECTED (int) ;
 scalar_t__ mysqlnd_read_header (TYPE_4__*,int *,TYPE_5__*,int *,int *) ;
 int php_error (int ,char*) ;
 int * stub1 (TYPE_6__*,size_t) ;
 scalar_t__ stub2 (TYPE_4__*,int *,int *,size_t,int *,int *) ;
 int * stub3 (TYPE_6__*,int *,size_t,size_t) ;
 scalar_t__ stub4 (TYPE_4__*,int *,int *,size_t,int *,int *) ;
 int stub5 (TYPE_6__*,int *) ;

__attribute__((used)) static enum_func_status
php_mysqlnd_read_row_ex(MYSQLND_PFC * pfc,
      MYSQLND_VIO * vio,
      MYSQLND_STATS * stats,
      MYSQLND_ERROR_INFO * error_info,
      MYSQLND_MEMORY_POOL * pool,
      MYSQLND_ROW_BUFFER * buffer,
      size_t * const data_size)
{
 enum_func_status ret = PASS;
 MYSQLND_PACKET_HEADER header;
 zend_uchar * p = ((void*)0);
 size_t prealloc_more_bytes;

 DBG_ENTER("php_mysqlnd_read_row_ex");
 prealloc_more_bytes = 1;

 *data_size = 0;
 if (UNEXPECTED(FAIL == mysqlnd_read_header(pfc, vio, &header, stats, error_info))) {
  ret = FAIL;
 } else {
  *data_size += header.size;
  buffer->ptr = pool->get_chunk(pool, *data_size + prealloc_more_bytes);
  p = buffer->ptr;

  if (UNEXPECTED(PASS != (ret = pfc->data->m.receive(pfc, vio, p, header.size, stats, error_info)))) {
   DBG_ERR("Empty row packet body");
   php_error(E_WARNING, "Empty row packet body");
  } else {
   while (header.size >= MYSQLND_MAX_PACKET_SIZE) {
    if (FAIL == mysqlnd_read_header(pfc, vio, &header, stats, error_info)) {
     ret = FAIL;
     break;
    }

    *data_size += header.size;


    if (!header.size) {
     break;
    }




    buffer->ptr = pool->resize_chunk(pool, buffer->ptr, *data_size - header.size, *data_size + prealloc_more_bytes);
    if (!buffer->ptr) {
     SET_OOM_ERROR(error_info);
     ret = FAIL;
     break;
    }

    p = (zend_uchar *) buffer->ptr + (*data_size - header.size);

    if (PASS != (ret = pfc->data->m.receive(pfc, vio, p, header.size, stats, error_info))) {
     DBG_ERR("Empty row packet body");
     php_error(E_WARNING, "Empty row packet body");
     break;
    }
   }
  }
 }
 if (ret == FAIL && buffer->ptr) {
  pool->free_chunk(pool, buffer->ptr);
  buffer->ptr = ((void*)0);
 }
 DBG_RETURN(ret);
}
