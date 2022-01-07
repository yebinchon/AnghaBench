
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct espconn {scalar_t__ reverse; } ;
typedef int sint8 ;
struct TYPE_6__ {int length; int data; } ;
struct TYPE_8__ {TYPE_1__ msg; } ;
typedef TYPE_3__ msg_queue_t ;
struct TYPE_7__ {int pending_msg_q; } ;
struct TYPE_9__ {scalar_t__ event_timeout; TYPE_2__ mqtt_state; scalar_t__ keep_alive_tick; scalar_t__ secure; } ;
typedef TYPE_4__ lmqtt_userdata ;


 int ESPCONN_OK ;
 scalar_t__ MQTT_SEND_TIMEOUT ;
 int NODE_DBG (char*,int ) ;
 int espconn_secure_send (struct espconn*,int ,int ) ;
 int espconn_send (struct espconn*,int ,int ) ;
 TYPE_3__* msg_peek (int *) ;
 int msg_size (int *) ;

__attribute__((used)) static sint8 mqtt_send_if_possible(struct espconn *pesp_conn)
{
  if(pesp_conn == ((void*)0))
    return ESPCONN_OK;
  lmqtt_userdata *mud = (lmqtt_userdata *)pesp_conn->reverse;
  if(mud == ((void*)0))
    return ESPCONN_OK;

  sint8 espconn_status = ESPCONN_OK;



  if (mud->event_timeout == 0) {
    msg_queue_t *pending_msg = msg_peek(&(mud->mqtt_state.pending_msg_q));
    if (pending_msg) {
      mud->event_timeout = MQTT_SEND_TIMEOUT;
      NODE_DBG("Sent: %d\n", pending_msg->msg.length);







      {
        espconn_status = espconn_send( pesp_conn, pending_msg->msg.data, pending_msg->msg.length );
      }
      mud->keep_alive_tick = 0;
    }
  }
  NODE_DBG("send_if_poss, queue size: %d\n", msg_size(&(mud->mqtt_state.pending_msg_q)));
  return espconn_status;
}
