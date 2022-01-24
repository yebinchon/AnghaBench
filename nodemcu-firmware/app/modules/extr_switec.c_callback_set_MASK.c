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
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TFUNCTION ; 
 scalar_t__ LUA_TLIGHTFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * stopped_callback ; 

__attribute__((used)) static void FUNC4(lua_State* L, unsigned int id, int argNumber)
{
  if (FUNC3(L, argNumber) == LUA_TFUNCTION || FUNC3(L, argNumber) == LUA_TLIGHTFUNCTION) {
    FUNC2(L, argNumber);  // copy argument (func) to the top of stack
    FUNC0(L, id);
    stopped_callback[id] = FUNC1(L, LUA_REGISTRYINDEX);
  }
}