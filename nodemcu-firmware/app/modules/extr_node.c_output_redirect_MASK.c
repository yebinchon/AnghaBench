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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ output_redir_ref ; 
 scalar_t__ serial_debug ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

void FUNC5(const char *str) {
  lua_State *L = FUNC1();
  // if(strlen(str)>=TX_BUFF_SIZE){
  //   NODE_ERR("output too long.\n");
  //   return;
  // }

  if (output_redir_ref == LUA_NOREF) {
    FUNC4(str);
    return;
  }

  if (serial_debug != 0) {
    FUNC4(str);
  }

  FUNC3(L, LUA_REGISTRYINDEX, output_redir_ref);
  FUNC2(L, str);
  FUNC0(L, 1, 0);   // this call back function should never user output.
}