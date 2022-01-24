#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int port; int /*<<< orphan*/  recv_buffer_state; scalar_t__ recv_buffer_size; int /*<<< orphan*/ * recv_buffer; TYPE_2__* connect_info; int /*<<< orphan*/ * pending_msg_q; } ;
struct TYPE_6__ {int clean_session; int keepalive; int max_message_length; scalar_t__ will_retain; scalar_t__ will_qos; scalar_t__* password; scalar_t__* username; scalar_t__* client_id; } ;
struct TYPE_7__ {TYPE_1__ mqtt_state; TYPE_2__ connect_info; int /*<<< orphan*/  connState; void* cb_puback_ref; void* cb_unsuback_ref; void* cb_suback_ref; void* cb_overflow_ref; void* cb_message_ref; void* cb_disconnect_ref; void* cb_connect_fail_ref; void* cb_connect_ref; void* self_ref; } ;
typedef  TYPE_3__ lmqtt_userdata ;

/* Variables and functions */
 int DEFAULT_MAX_MESSAGE_LENGTH ; 
 void* LUA_NOREF ; 
 int MQTT_DEFAULT_KEEPALIVE ; 
 int /*<<< orphan*/  MQTT_INIT ; 
 int /*<<< orphan*/  MQTT_RECV_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int,size_t) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*,int /*<<< orphan*/ ) ; 
 size_t FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 

__attribute__((used)) static int FUNC17( lua_State* L )
{
  FUNC0("enter mqtt_socket_client.\n");

  lmqtt_userdata *mud;
  char tempid[20] = {0};
  FUNC14(tempid, "%s%x", "NodeMCU_", FUNC16() );
  FUNC0(tempid);
  FUNC0("\n");

  const char *clientId = tempid, *username = NULL, *password = NULL;
  size_t idl = FUNC15(tempid);
  size_t unl = 0, pwl = 0;
  int keepalive = 0;
  int stack = 1;
  int clean_session = 1;
  int max_message_length = 0;
  int top = FUNC7(L);

  // create a object
  mud = (lmqtt_userdata *)FUNC10(L, sizeof(lmqtt_userdata));
  FUNC13(mud, 0, sizeof(*mud));
  // pre-initialize it, in case of errors
  mud->self_ref = LUA_NOREF;
  mud->cb_connect_ref = LUA_NOREF;
  mud->cb_connect_fail_ref = LUA_NOREF;
  mud->cb_disconnect_ref = LUA_NOREF;

  mud->cb_message_ref = LUA_NOREF;
  mud->cb_overflow_ref = LUA_NOREF;
  mud->cb_suback_ref = LUA_NOREF;
  mud->cb_unsuback_ref = LUA_NOREF;
  mud->cb_puback_ref = LUA_NOREF;

  mud->connState = MQTT_INIT;

  // set its metatable
  FUNC6(L, "mqtt.socket");
  FUNC11(L, -2);

  if( FUNC9(L,stack) )   // deal with the clientid string
  {
    clientId = FUNC4( L, stack, &idl );
    stack++;
  }

  if(FUNC8( L, stack ))
  {
    keepalive = FUNC3( L, stack);
    stack++;
  }

  if(keepalive == 0){
    keepalive = MQTT_DEFAULT_KEEPALIVE;
  }

  if(FUNC9( L, stack )){
    username = FUNC4( L, stack, &unl );
    stack++;
  }
  if(username == NULL)
    unl = 0;
  FUNC0("length username: %d\r\n", unl);

  if(FUNC9( L, stack )){
    password = FUNC4( L, stack, &pwl );
    stack++;
  }
  if(password == NULL)
    pwl = 0;
  FUNC0("length password: %d\r\n", pwl);

  if(FUNC8( L, stack ))
  {
    clean_session = FUNC3( L, stack);
    stack++;
  }

  if(clean_session > 1){
    clean_session = 1;
  }

  if(FUNC8( L, stack ))
  {
      max_message_length = FUNC3( L, stack);
      stack++;
  }

  if(max_message_length == 0) {
    max_message_length = DEFAULT_MAX_MESSAGE_LENGTH;
  }

  // TODO: check the zalloc result.
  mud->connect_info.client_id = (uint8_t *)FUNC1(1,idl+1);
  mud->connect_info.username = (uint8_t *)FUNC1(1,unl + 1);
  mud->connect_info.password = (uint8_t *)FUNC1(1,pwl + 1);
  if(!mud->connect_info.client_id || !mud->connect_info.username || !mud->connect_info.password){
    if(mud->connect_info.client_id) {
      FUNC2(mud->connect_info.client_id);
      mud->connect_info.client_id = NULL;
    }
    if(mud->connect_info.username) {
      FUNC2(mud->connect_info.username);
      mud->connect_info.username = NULL;
    }
    if(mud->connect_info.password) {
      FUNC2(mud->connect_info.password);
      mud->connect_info.password = NULL;
    }
    return FUNC5(L, "not enough memory");
  }

  FUNC12(mud->connect_info.client_id, clientId, idl);
  mud->connect_info.client_id[idl] = 0;
  FUNC12(mud->connect_info.username, username, unl);
  mud->connect_info.username[unl] = 0;
  FUNC12(mud->connect_info.password, password, pwl);
  mud->connect_info.password[pwl] = 0;

  FUNC0("MQTT: Init info: %s, %s, %s\r\n", mud->connect_info.client_id, mud->connect_info.username, mud->connect_info.password);

  mud->connect_info.clean_session = clean_session;
  mud->connect_info.will_qos = 0;
  mud->connect_info.will_retain = 0;
  mud->connect_info.keepalive = keepalive;
  mud->connect_info.max_message_length = max_message_length;

  mud->mqtt_state.pending_msg_q = NULL;
  mud->mqtt_state.port = 1883;
  mud->mqtt_state.connect_info = &mud->connect_info;
  mud->mqtt_state.recv_buffer = NULL;
  mud->mqtt_state.recv_buffer_size = 0;
  mud->mqtt_state.recv_buffer_state = MQTT_RECV_NORMAL;

  FUNC0("leave mqtt_socket_client.\n");
  return 1;
}