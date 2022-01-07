
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int msg_queue_t ;
struct TYPE_10__ {int data; } ;
typedef TYPE_3__ mqtt_message_t ;
struct TYPE_9__ {int pending_msg_q; int mqtt_connection; TYPE_1__* connect_info; } ;
struct TYPE_11__ {scalar_t__ event_timeout; scalar_t__ connState; scalar_t__ keep_alive_tick; int keepalive_sent; int * pesp_conn; TYPE_2__ mqtt_state; scalar_t__ secure; int mqttTimer; } ;
typedef TYPE_4__ lmqtt_userdata ;
struct TYPE_8__ {scalar_t__ keepalive; } ;


 int MQTT_BUF_SIZE ;
 scalar_t__ MQTT_CONNECT_SENDING ;
 scalar_t__ MQTT_CONNECT_SENT ;
 int MQTT_CONN_FAIL_SERVER_NOT_FOUND ;
 int MQTT_CONN_FAIL_TIMEOUT_RECEIVING ;
 int MQTT_CONN_FAIL_TIMEOUT_SENDING ;
 scalar_t__ MQTT_DATA ;
 scalar_t__ MQTT_INIT ;
 int MQTT_MSG_TYPE_PINGREQ ;
 int NODE_DBG (char*,...) ;
 int espconn_disconnect (int *) ;
 int espconn_secure_disconnect (int *) ;
 int mqtt_connack_fail (TYPE_4__*,int ) ;
 scalar_t__ mqtt_get_qos (int ) ;
 int mqtt_msg_init (int *,int *,int) ;
 TYPE_3__* mqtt_msg_pingreq (int *) ;
 int mqtt_send_if_possible (int *) ;
 int mqtt_socket_reconnected (int *,int ) ;
 int msg_dequeue (int *) ;
 int msg_destroy (int ) ;
 int * msg_enqueue (int *,TYPE_3__*,int ,int ,int) ;
 int * msg_peek (int *) ;
 int msg_size (int *) ;
 int os_timer_disarm (int *) ;

void mqtt_socket_timer(void *arg)
{
  NODE_DBG("enter mqtt_socket_timer.\n");
  lmqtt_userdata *mud = (lmqtt_userdata*) arg;

  if(mud == ((void*)0))
    return;
  if(mud->pesp_conn == ((void*)0)){
    NODE_DBG("mud->pesp_conn is NULL.\n");
    os_timer_disarm(&mud->mqttTimer);
    return;
  }

  NODE_DBG("timer, queue size: %d\n", msg_size(&(mud->mqtt_state.pending_msg_q)));
  if(mud->event_timeout > 0){
    NODE_DBG("event_timeout: %d.\n", mud->event_timeout);
        mud->event_timeout --;
    if(mud->event_timeout > 0){
      return;
    } else {
      NODE_DBG("event timeout. \n");
      if(mud->connState == MQTT_DATA)
        msg_destroy(msg_dequeue(&(mud->mqtt_state.pending_msg_q)));


    }
  }

  if(mud->connState == MQTT_INIT){
    NODE_DBG("Can not connect to broker.\n");
    os_timer_disarm(&mud->mqttTimer);
    mqtt_connack_fail(mud, MQTT_CONN_FAIL_SERVER_NOT_FOUND);







    {
      espconn_disconnect(mud->pesp_conn);
    }
  } else if(mud->connState == MQTT_CONNECT_SENDING){
    NODE_DBG("sSend MQTT_CONNECT failed.\n");
    mud->connState = MQTT_INIT;
    mqtt_connack_fail(mud, MQTT_CONN_FAIL_TIMEOUT_SENDING);
    {
      espconn_disconnect(mud->pesp_conn);
    }
    mud->keep_alive_tick = 0;
  } else if(mud->connState == MQTT_CONNECT_SENT) {
    NODE_DBG("MQTT_CONNECT timeout.\n");
    mud->connState = MQTT_INIT;
    {
      espconn_disconnect(mud->pesp_conn);
    }
    mqtt_connack_fail(mud, MQTT_CONN_FAIL_TIMEOUT_RECEIVING);
  } else if(mud->connState == MQTT_DATA){
    msg_queue_t *pending_msg = msg_peek(&(mud->mqtt_state.pending_msg_q));
    if(pending_msg){
      mqtt_send_if_possible(mud->pesp_conn);
    } else {

      mud->keep_alive_tick ++;
      if(mud->keep_alive_tick > mud->mqtt_state.connect_info->keepalive){
        if (mud->keepalive_sent) {

          mqtt_socket_reconnected(mud->pesp_conn, 0);
        } else {
          uint8_t temp_buffer[MQTT_BUF_SIZE];
          mqtt_msg_init(&mud->mqtt_state.mqtt_connection, temp_buffer, MQTT_BUF_SIZE);
          NODE_DBG("\r\nMQTT: Send keepalive packet\r\n");
          mqtt_message_t* temp_msg = mqtt_msg_pingreq(&mud->mqtt_state.mqtt_connection);
          msg_queue_t *node = msg_enqueue( &(mud->mqtt_state.pending_msg_q), temp_msg,
                              0, MQTT_MSG_TYPE_PINGREQ, (int)mqtt_get_qos(temp_msg->data) );
          mud->keepalive_sent = 1;
          mud->keep_alive_tick = 0;
          mqtt_send_if_possible(mud->pesp_conn);
        }
      }
    }
  }
  NODE_DBG("keep_alive_tick: %d\n", mud->keep_alive_tick);
  NODE_DBG("leave mqtt_socket_timer.\n");
}
