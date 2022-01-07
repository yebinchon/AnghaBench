
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef scalar_t__ zend_uchar ;
typedef scalar_t__ enum_func_status ;
struct TYPE_11__ {size_t size; scalar_t__* ptr; } ;
struct TYPE_10__ {int * stats; int * vio; int * protocol_frame_codec; int * error_info; } ;
struct TYPE_8__ {int sqlstate; int error_no; int error; } ;
struct TYPE_7__ {size_t size; } ;
struct TYPE_9__ {scalar_t__ binary_protocol; int field_count; scalar_t__ fields; int skip_extraction; int eof; void* warning_count; void* server_status; TYPE_2__ error_info; TYPE_6__ row_buffer; TYPE_1__ header; int result_set_memory_pool; } ;
typedef int MYSQLND_VIO ;
typedef int MYSQLND_STATS ;
typedef int MYSQLND_PFC ;
typedef TYPE_3__ MYSQLND_PACKET_ROW ;
typedef int MYSQLND_ERROR_INFO ;
typedef TYPE_4__ MYSQLND_CONN_DATA ;


 int DBG_ENTER (char*) ;
 int DBG_INF (char*) ;
 int DBG_INF_FMT (char*,void*,void*) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ EODATA_MARKER ;
 scalar_t__ ERROR_MARKER ;
 scalar_t__ FAIL ;
 int FALSE ;
 scalar_t__ MYSQLND_HEADER_SIZE ;
 int MYSQLND_INC_CONN_STATISTIC (int *,int ) ;
 int MYSQLND_INC_CONN_STATISTIC_W_VALUE2 (int *,int ,scalar_t__,int ,int) ;
 scalar_t__ PASS ;
 size_t PROT_ROW_PACKET ;
 int STAT_ROWS_FETCHED_FROM_SERVER_NORMAL ;
 int STAT_ROWS_FETCHED_FROM_SERVER_PS ;
 int STAT_ROWS_SKIPPED_NORMAL ;
 int STAT_ROWS_SKIPPED_PS ;
 int TRUE ;
 scalar_t__ mnd_ecalloc (int ,int) ;
 int * packet_type_to_statistic_byte_count ;
 int * packet_type_to_statistic_packet_count ;
 int php_mysqlnd_read_error_from_line (scalar_t__*,size_t,int ,int,int *,int ) ;
 scalar_t__ php_mysqlnd_read_row_ex (int *,int *,int *,int *,int ,TYPE_6__*,size_t*) ;
 void* uint2korr (scalar_t__*) ;

__attribute__((used)) static enum_func_status
php_mysqlnd_rowp_read(MYSQLND_CONN_DATA * conn, void * _packet)
{
 MYSQLND_PACKET_ROW *packet= (MYSQLND_PACKET_ROW *) _packet;
 MYSQLND_ERROR_INFO * error_info = conn->error_info;
 MYSQLND_PFC * pfc = conn->protocol_frame_codec;
 MYSQLND_VIO * vio = conn->vio;
 MYSQLND_STATS * stats = conn->stats;
 zend_uchar *p;
 enum_func_status ret = PASS;
 size_t data_size = 0;

 DBG_ENTER("php_mysqlnd_rowp_read");

 ret = php_mysqlnd_read_row_ex(pfc, vio, stats, error_info,
          packet->result_set_memory_pool, &packet->row_buffer, &data_size);
 if (FAIL == ret) {
  goto end;
 }
 MYSQLND_INC_CONN_STATISTIC_W_VALUE2(stats, packet_type_to_statistic_byte_count[PROT_ROW_PACKET],
          MYSQLND_HEADER_SIZE + packet->header.size,
          packet_type_to_statistic_packet_count[PROT_ROW_PACKET],
          1);
 packet->header.size = data_size;
 packet->row_buffer.size = data_size;

 if (ERROR_MARKER == (*(p = packet->row_buffer.ptr))) {





  ret = FAIL;
  php_mysqlnd_read_error_from_line(p + 1, data_size - 1,
           packet->error_info.error,
           sizeof(packet->error_info.error),
           &packet->error_info.error_no,
           packet->error_info.sqlstate
          );
 } else if (EODATA_MARKER == *p && data_size < 8) {
  packet->eof = TRUE;
  p++;
  if (data_size > 1) {
   packet->warning_count = uint2korr(p);
   p += 2;
   packet->server_status = uint2korr(p);

   DBG_INF_FMT("server_status=%u warning_count=%u", packet->server_status, packet->warning_count);
  }
 } else {
  MYSQLND_INC_CONN_STATISTIC(stats,
         packet->binary_protocol? STAT_ROWS_FETCHED_FROM_SERVER_PS:
                STAT_ROWS_FETCHED_FROM_SERVER_NORMAL);

  packet->eof = FALSE;


  if (!packet->skip_extraction) {
   if (!packet->fields) {
    DBG_INF("Allocating packet->fields");
    packet->fields = mnd_ecalloc(packet->field_count, sizeof(zval));
   }
  } else {
   MYSQLND_INC_CONN_STATISTIC(stats,
          packet->binary_protocol? STAT_ROWS_SKIPPED_PS:
                 STAT_ROWS_SKIPPED_NORMAL);
  }
 }

end:
 DBG_RETURN(ret);
}
