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
struct TYPE_4__ {int /*<<< orphan*/ * reservedData; } ;
typedef  TYPE_1__ ws_info ;
struct TYPE_5__ {scalar_t__ onReceive; scalar_t__ self_ref; } ;
typedef  TYPE_2__ ws_data ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC7(ws_info *ws, int len, char *message, int opCode) {
  FUNC0("websocketclient_onReceiveCallback\n");

  lua_State *L = FUNC3();

  if (ws == NULL || ws->reservedData == NULL) {
    FUNC1(L, "Client websocket is nil.\n");
    return;
  }
  ws_data *data = (ws_data *) ws->reservedData;

  if (data->onReceive != LUA_NOREF) {
    FUNC6(L, LUA_REGISTRYINDEX, data->onReceive); // load the callback function
    FUNC6(L, LUA_REGISTRYINDEX, data->self_ref);  // pass itself, #1 callback argument
    FUNC4(L, message, len); // #2 callback argument
    FUNC5(L, opCode); // #3 callback argument
    FUNC2(L, 3, 0);
  }
}