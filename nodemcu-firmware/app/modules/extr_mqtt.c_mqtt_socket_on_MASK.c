#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {void* cb_unsuback_ref; void* cb_suback_ref; void* cb_puback_ref; void* cb_overflow_ref; void* cb_message_ref; void* cb_disconnect_ref; void* cb_connect_ref; } ;
typedef  TYPE_1__ lmqtt_userdata ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 

__attribute__((used)) static int FUNC11( lua_State* L )
{
  FUNC0("enter mqtt_socket_on.\n");
  lmqtt_userdata *mud;
  size_t sl;

  mud = (lmqtt_userdata *)FUNC4(L, 1, "mqtt.socket");
  FUNC1(L, mud, 1, "mqtt.socket expected");
  if(mud==NULL){
    FUNC0("userdata is nil.\n");
    return 0;
  }

  const char *method = FUNC3( L, 2, &sl );
  if (method == NULL)
    return FUNC5( L, "wrong arg type" );

  FUNC2(L, 3);
  FUNC9(L, 3);  // copy argument (func) to the top of stack

  if( sl == 7 && FUNC10(method, "connect") == 0){
    FUNC7(L, LUA_REGISTRYINDEX, mud->cb_connect_ref);
    mud->cb_connect_ref = FUNC6(L, LUA_REGISTRYINDEX);
  }else if( sl == 7 && FUNC10(method, "offline") == 0){
    FUNC7(L, LUA_REGISTRYINDEX, mud->cb_disconnect_ref);
    mud->cb_disconnect_ref = FUNC6(L, LUA_REGISTRYINDEX);
  }else if( sl == 7 && FUNC10(method, "message") == 0){
    FUNC7(L, LUA_REGISTRYINDEX, mud->cb_message_ref);
    mud->cb_message_ref = FUNC6(L, LUA_REGISTRYINDEX);
  }else if( sl == 8 && FUNC10(method, "overflow") == 0){
    FUNC7(L, LUA_REGISTRYINDEX, mud->cb_overflow_ref);
    mud->cb_overflow_ref = FUNC6(L, LUA_REGISTRYINDEX);
  }else if( sl == 6 && FUNC10(method, "puback") == 0){
    FUNC7(L, LUA_REGISTRYINDEX, mud->cb_puback_ref);
    mud->cb_puback_ref = FUNC6(L, LUA_REGISTRYINDEX);
  }else if( sl == 6 && FUNC10(method, "suback") == 0){
    FUNC7(L, LUA_REGISTRYINDEX, mud->cb_suback_ref);
    mud->cb_suback_ref = FUNC6(L, LUA_REGISTRYINDEX);
  }else if( sl == 8 && FUNC10(method, "unsuback") == 0){
    FUNC7(L, LUA_REGISTRYINDEX, mud->cb_unsuback_ref);
    mud->cb_unsuback_ref = FUNC6(L, LUA_REGISTRYINDEX);
  }else{
    FUNC8(L, 1);
    return FUNC5( L, "method not supported" );
  }
  FUNC0("leave mqtt_socket_on.\n");
  return 0;
}