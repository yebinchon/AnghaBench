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
struct TYPE_3__ {int connectionState; scalar_t__ reservedData; } ;
typedef  TYPE_1__ ws_info ;
typedef  int /*<<< orphan*/  ws_data ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  METATABLE_WSCLIENT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int,int*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,char const*,unsigned short) ; 

__attribute__((used)) static int FUNC7(lua_State *L) {
  FUNC0("websocketclient_send is called.\n");

  ws_info *ws = (ws_info *) FUNC3(L, 1, METATABLE_WSCLIENT);

  ws_data *data = (ws_data *) ws->reservedData;

  if (ws->connectionState != 3) {
    // should this be an onFailure callback instead?
    return FUNC4(L, "Websocket isn't connected.\n");
  }

  int msgLength;
  const char *msg = FUNC2(L, 2, &msgLength);

  int opCode = 1; // default: text message
  if (FUNC5(L) == 3) {
    opCode = FUNC1(L, 3);
  }

  FUNC6(ws, opCode, msg, (unsigned short) msgLength);
  return 0;
}