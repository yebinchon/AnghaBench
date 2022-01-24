#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  msg_queue_t ;
struct TYPE_10__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ mqtt_message_t ;
struct TYPE_9__ {int /*<<< orphan*/  pending_msg_q; int /*<<< orphan*/  mqtt_connection; TYPE_1__* connect_info; } ;
struct TYPE_11__ {scalar_t__ event_timeout; scalar_t__ connState; scalar_t__ keep_alive_tick; int keepalive_sent; int /*<<< orphan*/ * pesp_conn; TYPE_2__ mqtt_state; scalar_t__ secure; int /*<<< orphan*/  mqttTimer; } ;
typedef  TYPE_4__ lmqtt_userdata ;
struct TYPE_8__ {scalar_t__ keepalive; } ;

/* Variables and functions */
 int MQTT_BUF_SIZE ; 
 scalar_t__ MQTT_CONNECT_SENDING ; 
 scalar_t__ MQTT_CONNECT_SENT ; 
 int /*<<< orphan*/  MQTT_CONN_FAIL_SERVER_NOT_FOUND ; 
 int /*<<< orphan*/  MQTT_CONN_FAIL_TIMEOUT_RECEIVING ; 
 int /*<<< orphan*/  MQTT_CONN_FAIL_TIMEOUT_SENDING ; 
 scalar_t__ MQTT_DATA ; 
 scalar_t__ MQTT_INIT ; 
 int /*<<< orphan*/  MQTT_MSG_TYPE_PINGREQ ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

void FUNC15(void *arg)
{
  FUNC0("enter mqtt_socket_timer.\n");
  lmqtt_userdata *mud = (lmqtt_userdata*) arg;

  if(mud == NULL)
    return;
  if(mud->pesp_conn == NULL){
    FUNC0("mud->pesp_conn is NULL.\n");
    FUNC14(&mud->mqttTimer);
    return;
  }

  FUNC0("timer, queue size: %d\n", FUNC13(&(mud->mqtt_state.pending_msg_q)));
  if(mud->event_timeout > 0){
    FUNC0("event_timeout: %d.\n", mud->event_timeout);
        mud->event_timeout --;
    if(mud->event_timeout > 0){
      return;
    } else {
      FUNC0("event timeout. \n");
      if(mud->connState == MQTT_DATA)
        FUNC10(FUNC9(&(mud->mqtt_state.pending_msg_q)));
      // should remove the head of the queue and re-send with DUP = 1
      // Not implemented yet.
    }
  }

  if(mud->connState == MQTT_INIT){ // socket connect time out.
    FUNC0("Can not connect to broker.\n");
    FUNC14(&mud->mqttTimer);
    FUNC3(mud, MQTT_CONN_FAIL_SERVER_NOT_FOUND);
#ifdef CLIENT_SSL_ENABLE
    if(mud->secure)
    {
      espconn_secure_disconnect(mud->pesp_conn);
    }
    else
#endif
    {
      FUNC1(mud->pesp_conn);
    }
  } else if(mud->connState == MQTT_CONNECT_SENDING){ // MQTT_CONNECT send time out.
    FUNC0("sSend MQTT_CONNECT failed.\n");
    mud->connState = MQTT_INIT;
    FUNC3(mud, MQTT_CONN_FAIL_TIMEOUT_SENDING);

#ifdef CLIENT_SSL_ENABLE
    if(mud->secure)
    {
      espconn_secure_disconnect(mud->pesp_conn);
    }
    else
#endif
    {
      FUNC1(mud->pesp_conn);
    }
    mud->keep_alive_tick = 0; // not need count anymore
  } else if(mud->connState == MQTT_CONNECT_SENT) { // wait for CONACK time out.
    FUNC0("MQTT_CONNECT timeout.\n");
    mud->connState = MQTT_INIT;

#ifdef CLIENT_SSL_ENABLE
    if(mud->secure)
    {
      espconn_secure_disconnect(mud->pesp_conn);
    }
    else
#endif
    {
      FUNC1(mud->pesp_conn);
    }
    FUNC3(mud, MQTT_CONN_FAIL_TIMEOUT_RECEIVING);
  } else if(mud->connState == MQTT_DATA){
    msg_queue_t *pending_msg = FUNC12(&(mud->mqtt_state.pending_msg_q));
    if(pending_msg){
      FUNC7(mud->pesp_conn);
    } else {
      // no queued event.
      mud->keep_alive_tick ++;
      if(mud->keep_alive_tick > mud->mqtt_state.connect_info->keepalive){
        if (mud->keepalive_sent) {
          // Oh dear -- keepalive timer expired and still no ack of previous message
          FUNC8(mud->pesp_conn, 0);
        } else {
          uint8_t temp_buffer[MQTT_BUF_SIZE];
          FUNC5(&mud->mqtt_state.mqtt_connection, temp_buffer, MQTT_BUF_SIZE);
          FUNC0("\r\nMQTT: Send keepalive packet\r\n");
          mqtt_message_t* temp_msg = FUNC6(&mud->mqtt_state.mqtt_connection);
          msg_queue_t *node = FUNC11( &(mud->mqtt_state.pending_msg_q), temp_msg,
                              0, MQTT_MSG_TYPE_PINGREQ, (int)FUNC4(temp_msg->data) );
          mud->keepalive_sent = 1;
          mud->keep_alive_tick = 0;     // Need to reset to zero in case flow control stopped.
          FUNC7(mud->pesp_conn);
        }
      }
    }
  }
  FUNC0("keep_alive_tick: %d\n", mud->keep_alive_tick);
  FUNC0("leave mqtt_socket_timer.\n");
}