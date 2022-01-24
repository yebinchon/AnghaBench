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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_TFUNCTION ; 
 int /*<<< orphan*/  LUA_TLIGHTFUNCTION ; 
 int /*<<< orphan*/ * file_rtc_cb ; 
 int FUNC0 (int /*<<< orphan*/ *,int,char*,char const* const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  rtc_cb_ref ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(lua_State *L)
{
  enum events{
    ON_RTC = 0
  };
  const char *const eventnames[] = {"rtc", NULL};

  int event = FUNC0(L, 1, "rtc", eventnames);

  switch (event) {
  case ON_RTC:
    FUNC2(L, LUA_REGISTRYINDEX, rtc_cb_ref);

    if ((FUNC4(L, 2) == LUA_TFUNCTION) ||
        (FUNC4(L, 2) == LUA_TLIGHTFUNCTION)) {
      FUNC3(L, 2);  // copy argument (func) to the top of stack
      rtc_cb_ref = FUNC1(L, LUA_REGISTRYINDEX);
      FUNC5(file_rtc_cb);
    } else {
      rtc_cb_ref = LUA_NOREF;
      FUNC5(NULL);
    }
    break;
  default:
    break;
  }

  return 0;
}