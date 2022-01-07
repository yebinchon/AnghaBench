
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zend_uchar ;
struct TYPE_14__ {int state; int * stats; int * vio; TYPE_4__* protocol_frame_codec; int * error_info; } ;
struct TYPE_13__ {scalar_t__ auth_data_len; int auth_data; } ;
struct TYPE_11__ {scalar_t__ length; int * const buffer; } ;
struct TYPE_12__ {TYPE_3__ cmd_buffer; TYPE_2__* data; } ;
struct TYPE_9__ {size_t (* send ) (TYPE_4__*,int *,int * const,int,int *,int *) ;} ;
struct TYPE_10__ {TYPE_1__ m; } ;
typedef int MYSQLND_VIO ;
typedef int MYSQLND_STATS ;
typedef TYPE_4__ MYSQLND_PFC ;
typedef TYPE_5__ MYSQLND_PACKET_CHANGE_AUTH_RESPONSE ;
typedef int MYSQLND_ERROR_INFO ;
typedef TYPE_6__ MYSQLND_CONN_DATA ;
typedef int MYSQLND_CONNECTION_STATE ;


 int CONN_QUIT_SENT ;
 int DBG_ENTER (char*) ;
 int DBG_RETURN (size_t const) ;
 int MYSQLND_HEADER_SIZE ;
 int SET_CONNECTION_STATE (int *,int ) ;
 int memcpy (int *,int ,scalar_t__) ;
 int mnd_efree (int * const) ;
 int * mnd_emalloc (scalar_t__) ;
 size_t stub1 (TYPE_4__*,int *,int * const,int,int *,int *) ;

__attribute__((used)) static size_t
php_mysqlnd_change_auth_response_write(MYSQLND_CONN_DATA * conn, void * _packet)
{
 MYSQLND_PACKET_CHANGE_AUTH_RESPONSE *packet= (MYSQLND_PACKET_CHANGE_AUTH_RESPONSE *) _packet;
 MYSQLND_ERROR_INFO * error_info = conn->error_info;
 MYSQLND_PFC * pfc = conn->protocol_frame_codec;
 MYSQLND_VIO * vio = conn->vio;
 MYSQLND_STATS * stats = conn->stats;
 MYSQLND_CONNECTION_STATE * connection_state = &conn->state;
 zend_uchar * const buffer = pfc->cmd_buffer.length >= packet->auth_data_len? pfc->cmd_buffer.buffer : mnd_emalloc(packet->auth_data_len);
 zend_uchar * p = buffer + MYSQLND_HEADER_SIZE;

 DBG_ENTER("php_mysqlnd_change_auth_response_write");

 if (packet->auth_data_len) {
  memcpy(p, packet->auth_data, packet->auth_data_len);
  p+= packet->auth_data_len;
 }

 {




  const size_t sent = pfc->data->m.send(pfc, vio, buffer, p - buffer - MYSQLND_HEADER_SIZE, stats, error_info);
  if (buffer != pfc->cmd_buffer.buffer) {
   mnd_efree(buffer);
  }
  if (!sent) {
   SET_CONNECTION_STATE(connection_state, CONN_QUIT_SENT);
  }
  DBG_RETURN(sent);
 }
}
