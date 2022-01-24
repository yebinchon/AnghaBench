#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct espconn {int dummy; } ;
typedef  scalar_t__ sint8 ;
typedef  int /*<<< orphan*/  msg_queue_t ;
typedef  int /*<<< orphan*/  mqtt_message_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int /*<<< orphan*/  pending_msg_q; int /*<<< orphan*/  mqtt_connection; } ;
struct TYPE_5__ {TYPE_1__ mqtt_state; int /*<<< orphan*/ * pesp_conn; int /*<<< orphan*/  cb_puback_ref; int /*<<< orphan*/  connected; } ;
typedef  TYPE_2__ lmqtt_userdata ;

/* Variables and functions */
 scalar_t__ ESPCONN_OK ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 int MQTT_BUF_SIZE ; 
 int /*<<< orphan*/  MQTT_MSG_TYPE_PUBLISH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,int,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,char const*,char const*,size_t,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16( lua_State* L )
{
  FUNC0("enter mqtt_socket_publish.\n");
  struct espconn *pesp_conn = NULL;
  lmqtt_userdata *mud;
  size_t l;
  uint8_t stack = 1;
  uint16_t msg_id = 0;

  mud = (lmqtt_userdata *)FUNC4(L, stack, "mqtt.socket");
  FUNC1(L, mud, stack, "mqtt.socket expected");
  stack++;
  if(mud==NULL){
    FUNC0("userdata is nil.\n");
    FUNC8(L, 0);
    return 1;
  }

  if(mud->pesp_conn == NULL){
    FUNC0("mud->pesp_conn is NULL.\n");
    FUNC8(L, 0);
    return 1;
  }

  if(!mud->connected){
    return FUNC5( L, "not connected" );
  }

  const char *topic = FUNC3( L, stack, &l );
  stack ++;
  if (topic == NULL){
    return FUNC5( L, "need topic" );
  }

  const char *payload = FUNC3( L, stack, &l );
  stack ++;
  uint8_t qos = FUNC2( L, stack);
  stack ++;
  uint8_t retain = FUNC2( L, stack);
  stack ++;

  uint8_t temp_buffer[MQTT_BUF_SIZE];
  FUNC11(&mud->mqtt_state.mqtt_connection, temp_buffer, MQTT_BUF_SIZE);
  mqtt_message_t *temp_msg = FUNC12(&mud->mqtt_state.mqtt_connection,
                       topic, payload, l,
                       qos, retain,
                       &msg_id);

  if (FUNC10(L, stack) == LUA_TFUNCTION || FUNC10(L, stack) == LUA_TLIGHTFUNCTION){
    FUNC9(L, stack);  // copy argument (func) to the top of stack
    FUNC7(L, LUA_REGISTRYINDEX, mud->cb_puback_ref);
    mud->cb_puback_ref = FUNC6(L, LUA_REGISTRYINDEX);
  }

  msg_queue_t *node = FUNC14(&(mud->mqtt_state.pending_msg_q), temp_msg,
                      msg_id, MQTT_MSG_TYPE_PUBLISH, (int)qos );

  sint8 espconn_status = ESPCONN_OK;

  espconn_status = FUNC13(mud->pesp_conn);

  if(!node || espconn_status != ESPCONN_OK){
    FUNC8(L, 0);
  } else {
    FUNC8(L, 1);  // enqueued succeed.
  }

  FUNC0("publish, queue size: %d\n", FUNC15(&(mud->mqtt_state.pending_msg_q)));
  FUNC0("leave mqtt_socket_publish.\n");
  return 1;
}