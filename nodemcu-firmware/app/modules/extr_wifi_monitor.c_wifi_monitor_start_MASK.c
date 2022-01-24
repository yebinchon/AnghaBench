#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ uint8 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 scalar_t__ LUA_TNUMBER ; 
 scalar_t__ STATION_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  (*) ()) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int mon_mask ; 
 int mon_offset ; 
 int mon_value ; 
 int /*<<< orphan*/  recv_cb ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  wifi_rx_cb ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(lua_State *L) {
  int argno = 1;
  if (FUNC5(L, argno) == LUA_TNUMBER) {
    int offset = FUNC1(L, argno);
    argno++;
    if (FUNC5(L, argno) == LUA_TNUMBER) {
      int value = FUNC1(L, argno);

      int mask = 0xff;
      argno++;

      if (FUNC5(L, argno) == LUA_TNUMBER) {
        mask = FUNC1(L, argno);
        argno++;
      }
      mon_offset = offset - 1;
      mon_value = value;
      mon_mask = mask;
    } else {
      return FUNC2(L, "Must supply offset and value");
    }
  } else {
    // Management frames by default
    mon_offset = 12;
    mon_value = 0x00;
    mon_mask = 0x0C;
  }
  if (FUNC5(L, argno) == LUA_TFUNCTION || FUNC5(L, argno) == LUA_TLIGHTFUNCTION)
  {
    FUNC4(L, argno);  // copy argument (func) to the top of stack
    recv_cb = FUNC3(L, LUA_REGISTRYINDEX);
    uint8 connect_status = FUNC11();
    FUNC12(0);
    FUNC8(1);
    FUNC7(0);
    FUNC10();
    FUNC9(wifi_rx_cb);
    // Now we have to wait until we get the EVENT_STAMODE_DISCONNECTED event
    // before we can go further.
    if (connect_status == STATION_IDLE) {
      FUNC6();
    } else {
      FUNC0(start_actually_monitoring);
    }
    return 0;
  }
  return FUNC2(L, "Missing callback");
}