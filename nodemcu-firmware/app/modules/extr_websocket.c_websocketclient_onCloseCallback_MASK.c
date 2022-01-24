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
struct TYPE_5__ {scalar_t__ onClose; scalar_t__ self_ref; } ;
typedef  TYPE_2__ ws_data ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC8(ws_info *ws, int errorCode) {
  FUNC0("websocketclient_onCloseCallback\n");

  lua_State *L = FUNC5();

  if (ws == NULL || ws->reservedData == NULL) {
    FUNC1(L, "Client websocket is nil.\n");
    return;
  }
  ws_data *data = (ws_data *) ws->reservedData;

  if (data->onClose != LUA_NOREF) {
    FUNC7(L, LUA_REGISTRYINDEX, data->onClose); // load the callback function
    FUNC7(L, LUA_REGISTRYINDEX, data->self_ref);  // pass itself, #1 callback argument
    FUNC6(L, errorCode); // pass the error code, #2 callback argument
    FUNC3(L, 2, 0);
  }

  // free self-reference to allow gc (no futher callback will be called until next ws:connect())
  FUNC4(L, LUA_GCSTOP, 0); // required to avoid freeing ws_data
  FUNC2(L, LUA_REGISTRYINDEX, data->self_ref);
  data->self_ref = LUA_NOREF;
  FUNC4(L, LUA_GCRESTART, 0);
}