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
struct TYPE_4__ {int connectionState; scalar_t__ reservedData; int /*<<< orphan*/  extraHeaders; } ;
typedef  TYPE_1__ ws_info ;
struct TYPE_5__ {scalar_t__ onConnection; scalar_t__ onReceive; scalar_t__ onClose; scalar_t__ self_ref; } ;
typedef  TYPE_2__ ws_data ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_GCRESTART ; 
 int /*<<< orphan*/  LUA_GCSTOP ; 
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  METATABLE_WSCLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(lua_State *L) {
  FUNC0("websocketclient_gc\n");

  ws_info *ws = (ws_info *) FUNC1(L, 1, METATABLE_WSCLIENT);

  ws->extraHeaders = FUNC8(ws->extraHeaders, 0);

  ws_data *data = (ws_data *) ws->reservedData;

  FUNC2(L, LUA_REGISTRYINDEX, data->onConnection);
  FUNC2(L, LUA_REGISTRYINDEX, data->onReceive);

  if (data->onClose != LUA_NOREF) {
    if (ws->connectionState != 4) { // only call if connection open
      FUNC7(L, LUA_REGISTRYINDEX, data->onClose);

      FUNC6(L, -100);
      FUNC4(L, 1, 0);
    }
    FUNC2(L, LUA_REGISTRYINDEX, data->onClose);
  }

  if (data->self_ref != LUA_NOREF) {
    FUNC5(L, LUA_GCSTOP, 0); // required to avoid freeing ws_data
    FUNC2(L, LUA_REGISTRYINDEX, data->self_ref);
    data->self_ref = LUA_NOREF;
    FUNC5(L, LUA_GCRESTART, 0);
  }

  FUNC0("freeing lua data\n");
  FUNC3(L, data);
  FUNC0("done freeing lua data\n");

  return 0;
}