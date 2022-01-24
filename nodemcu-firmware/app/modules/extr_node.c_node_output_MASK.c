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
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ output_redir_ref ; 
 int serial_debug ; 

__attribute__((used)) static int FUNC6( lua_State* L )
{
  // luaL_checkanyfunction(L, 1);
  if (FUNC5(L, 1) == LUA_TFUNCTION || FUNC5(L, 1) == LUA_TLIGHTFUNCTION) {
    FUNC3(L, 1);  // copy argument (func) to the top of stack
    if (output_redir_ref != LUA_NOREF)
      FUNC1(L, LUA_REGISTRYINDEX, output_redir_ref);
    output_redir_ref = FUNC0(L, LUA_REGISTRYINDEX);
  } else {    // unref the key press function
    if (output_redir_ref != LUA_NOREF)
      FUNC1(L, LUA_REGISTRYINDEX, output_redir_ref);
    output_redir_ref = LUA_NOREF;
    serial_debug = 1;
    return 0;
  }

  if ( FUNC2(L, 2) )
  {
    serial_debug = FUNC4(L, 2);
    if (serial_debug != 0)
      serial_debug = 1;
  } else {
    serial_debug = 1; // default to 1
  }

  return 0;
}