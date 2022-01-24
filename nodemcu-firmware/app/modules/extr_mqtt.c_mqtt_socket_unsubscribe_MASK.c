#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  scalar_t__ sint8 ;
struct TYPE_13__ {int /*<<< orphan*/  length; } ;
struct TYPE_15__ {TYPE_1__ msg; int /*<<< orphan*/  publish_qos; int /*<<< orphan*/  msg_id; } ;
typedef  TYPE_3__ msg_queue_t ;
struct TYPE_16__ {scalar_t__ length; int /*<<< orphan*/  data; } ;
typedef  TYPE_4__ mqtt_message_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_14__ {int /*<<< orphan*/  pending_msg_q; int /*<<< orphan*/  mqtt_connection; } ;
struct TYPE_17__ {TYPE_2__ mqtt_state; int /*<<< orphan*/ * pesp_conn; int /*<<< orphan*/  event_timeout; int /*<<< orphan*/  cb_unsuback_ref; int /*<<< orphan*/  connected; } ;
typedef  TYPE_5__ lmqtt_userdata ;

/* Variables and functions */
 scalar_t__ ESPCONN_IF ; 
 scalar_t__ ESPCONN_OK ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 int MQTT_BUF_SIZE ; 
 int /*<<< orphan*/  MQTT_MSG_TYPE_UNSUBSCRIBE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_5__*,int,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,size_t*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int*,int) ; 
 TYPE_4__* FUNC17 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC20 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC22 (int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC24( lua_State* L ) {
  FUNC0("enter mqtt_socket_unsubscribe.\n");

  uint8_t stack = 1;
  uint16_t msg_id = 0;
  const char *topic;
  size_t il;
  lmqtt_userdata *mud;

  mud = (lmqtt_userdata *) FUNC4( L, stack, "mqtt.socket" );
  FUNC1( L, mud, stack, "mqtt.socket expected" );
  stack++;

  if(mud==NULL){
    FUNC0("userdata is nil.\n");
    FUNC11(L, 0);
    return 1;
  }

  if(mud->pesp_conn == NULL){
    FUNC0("mud->pesp_conn is NULL.\n");
    FUNC11(L, 0);
    return 1;
  }

  if(!mud->connected){
    FUNC5( L, "not connected" );
    FUNC11(L, 0);
    return 1;
  }

  uint8_t temp_buffer[MQTT_BUF_SIZE];
  FUNC16(&mud->mqtt_state.mqtt_connection, temp_buffer, MQTT_BUF_SIZE);
  mqtt_message_t *temp_msg = NULL;

  if( FUNC8( L, stack ) ) {
    FUNC0("unsubscribe table\n");
    FUNC12( L ); /* first key */

    int topic_count = 0;
    uint8_t overflow = 0;

    while( FUNC9( L, stack ) != 0 ) {
      topic = FUNC3( L, -2 );

      if (topic_count == 0) {
        temp_msg = FUNC19( &mud->mqtt_state.mqtt_connection, &msg_id );
      }
      temp_msg = FUNC20( &mud->mqtt_state.mqtt_connection, topic );
      topic_count++;

      FUNC0("topic: %s - length: %d\n", topic, temp_msg->length);

      if (temp_msg->length == 0) {
        FUNC10(L, 1);
        overflow = 1;
        break;  // too long message for the outbuffer.
      }

      FUNC10( L, 1 );
    }

    if (topic_count == 0){
      return FUNC5( L, "no topics found" );
    }
    if (overflow != 0){
      return FUNC5( L, "buffer overflow, can't enqueue all unsubscriptions" );
    }

    temp_msg = FUNC18( &mud->mqtt_state.mqtt_connection );
    if (temp_msg->length == 0) {
      return FUNC5( L, "buffer overflow, can't enqueue all unsubscriptions" );
    }

    stack++;
  } else {
    FUNC0("unsubscribe string\n");
    topic = FUNC2( L, stack, &il );
    stack++;
    if( topic == NULL ){
      return FUNC5( L, "need topic name" );
    }
    temp_msg = FUNC17( &mud->mqtt_state.mqtt_connection, topic, &msg_id );
  }

  if( FUNC14( L, stack ) == LUA_TFUNCTION || FUNC14( L, stack ) == LUA_TLIGHTFUNCTION ) {    // TODO: this will overwrite the previous one.
    FUNC13( L, stack );  // copy argument (func) to the top of stack
    FUNC7( L, LUA_REGISTRYINDEX, mud->cb_unsuback_ref );
    mud->cb_unsuback_ref = FUNC6( L, LUA_REGISTRYINDEX );
  }

  msg_queue_t *node = FUNC22( &(mud->mqtt_state.pending_msg_q), temp_msg,
                                   msg_id, MQTT_MSG_TYPE_UNSUBSCRIBE, (int)FUNC15(temp_msg->data) );

  FUNC0("topic: %s - id: %d - qos: %d, length: %d\n", topic, node->msg_id, node->publish_qos, node->msg.length);
  FUNC0("msg_size: %d, event_timeout: %d\n", FUNC23(&(mud->mqtt_state.pending_msg_q)), mud->event_timeout);

  sint8 espconn_status = ESPCONN_IF;

  espconn_status = FUNC21(mud->pesp_conn);

  if(!node || espconn_status != ESPCONN_OK){
    FUNC11(L, 0);
  } else {
    FUNC11(L, 1);  // enqueued succeed.
  }
  FUNC0("unsubscribe, queue size: %d\n", FUNC23(&(mud->mqtt_state.pending_msg_q)));
  FUNC0("leave mqtt_socket_unsubscribe.\n");
  return 1;
}