
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int zend_uchar ;
typedef int enum_func_status ;
typedef enum mysqlnd_packet_type { ____Placeholder_mysqlnd_packet_type } mysqlnd_packet_type ;
struct TYPE_13__ {size_t const size; } ;
struct TYPE_12__ {TYPE_2__* data; } ;
struct TYPE_10__ {scalar_t__ (* receive ) (TYPE_3__*,int *,int * const,size_t const,int *,int *) ;} ;
struct TYPE_11__ {TYPE_1__ m; } ;
typedef int MYSQLND_VIO ;
typedef int MYSQLND_STATS ;
typedef TYPE_3__ MYSQLND_PFC ;
typedef TYPE_4__ MYSQLND_PACKET_HEADER ;
typedef int MYSQLND_ERROR_INFO ;
typedef int MYSQLND_CONNECTION_STATE ;


 int CONN_QUIT_SENT ;
 int CR_SERVER_GONE_ERROR ;
 int DBG_ENTER (char*) ;
 int DBG_ERR_FMT (char*,...) ;
 int DBG_INF_FMT (char*,int * const,size_t const) ;
 int DBG_RETURN (scalar_t__) ;
 scalar_t__ FAIL ;
 scalar_t__ MYSQLND_HEADER_SIZE ;
 int MYSQLND_INC_CONN_STATISTIC_W_VALUE2 (int *,int ,scalar_t__,int ,int) ;
 scalar_t__ PASS ;
 int SET_CLIENT_ERROR (int *,int ,int ,int ) ;
 int SET_CONNECTION_STATE (int *,int ) ;
 int UNKNOWN_SQLSTATE ;
 scalar_t__ mysqlnd_read_header (TYPE_3__*,int *,TYPE_4__*,int *,int *) ;
 int mysqlnd_server_gone ;
 int * packet_type_to_statistic_byte_count ;
 int * packet_type_to_statistic_packet_count ;
 scalar_t__ stub1 (TYPE_3__*,int *,int * const,size_t const,int *,int *) ;

__attribute__((used)) static enum_func_status
mysqlnd_read_packet_header_and_body(MYSQLND_PACKET_HEADER * packet_header,
         MYSQLND_PFC * pfc,
         MYSQLND_VIO * vio,
         MYSQLND_STATS * stats,
         MYSQLND_ERROR_INFO * error_info,
         MYSQLND_CONNECTION_STATE * connection_state,
         zend_uchar * const buf, const size_t buf_size,
         const char * const packet_type_as_text,
         enum mysqlnd_packet_type packet_type)
{
 DBG_ENTER("mysqlnd_read_packet_header_and_body");
 DBG_INF_FMT("buf=%p size=%u", buf, buf_size);
 if (FAIL == mysqlnd_read_header(pfc, vio, packet_header, stats, error_info)) {
  SET_CONNECTION_STATE(connection_state, CONN_QUIT_SENT);
  SET_CLIENT_ERROR(error_info, CR_SERVER_GONE_ERROR, UNKNOWN_SQLSTATE, mysqlnd_server_gone);
  DBG_ERR_FMT("Can't read %s's header", packet_type_as_text);
  DBG_RETURN(FAIL);
 }
 if (buf_size < packet_header->size) {
  DBG_ERR_FMT("Packet buffer %u wasn't big enough %u, %u bytes will be unread",
     buf_size, packet_header->size, packet_header->size - buf_size);
  DBG_RETURN(FAIL);
 }
 if (FAIL == pfc->data->m.receive(pfc, vio, buf, packet_header->size, stats, error_info)) {
  SET_CONNECTION_STATE(connection_state, CONN_QUIT_SENT);
  SET_CLIENT_ERROR(error_info, CR_SERVER_GONE_ERROR, UNKNOWN_SQLSTATE, mysqlnd_server_gone);
  DBG_ERR_FMT("Empty '%s' packet body", packet_type_as_text);
  DBG_RETURN(FAIL);
 }
 MYSQLND_INC_CONN_STATISTIC_W_VALUE2(stats, packet_type_to_statistic_byte_count[packet_type],
          MYSQLND_HEADER_SIZE + packet_header->size,
          packet_type_to_statistic_packet_count[packet_type],
          1);
 DBG_RETURN(PASS);
}
