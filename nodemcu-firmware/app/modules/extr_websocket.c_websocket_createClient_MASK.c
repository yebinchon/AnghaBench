#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* reservedData; int /*<<< orphan*/ * onFailure; int /*<<< orphan*/ * onReceive; int /*<<< orphan*/ * onConnection; int /*<<< orphan*/ * extraHeaders; scalar_t__ connectionState; } ;
typedef  TYPE_1__ ws_info ;
struct TYPE_4__ {void* self_ref; void* onClose; void* onReceive; void* onConnection; } ;
typedef  TYPE_2__ ws_data ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 void* LUA_NOREF ; 
 int /*<<< orphan*/  METATABLE_WSCLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  websocketclient_onCloseCallback ; 
 int /*<<< orphan*/  websocketclient_onConnectionCallback ; 
 int /*<<< orphan*/  websocketclient_onReceiveCallback ; 

__attribute__((used)) static int FUNC5(lua_State *L) {
  FUNC0("websocket_createClient\n");

  // create user data
  ws_data *data = (ws_data *) FUNC2(L, sizeof(ws_data));
  data->onConnection = LUA_NOREF;
  data->onReceive = LUA_NOREF;
  data->onClose = LUA_NOREF;
  data->self_ref = LUA_NOREF; // only set when ws:connect is called

  ws_info *ws = (ws_info *) FUNC3(L, sizeof(ws_info));
  ws->connectionState = 0;
  ws->extraHeaders = NULL;
  ws->onConnection = &websocketclient_onConnectionCallback;
  ws->onReceive = &websocketclient_onReceiveCallback;
  ws->onFailure = &websocketclient_onCloseCallback;
  ws->reservedData = data;

  // set its metatable
  FUNC1(L, METATABLE_WSCLIENT);
  FUNC4(L, -2);

  return 1;
}