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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_3__ {scalar_t__ cb_connect_fail_ref; scalar_t__ self_ref; } ;
typedef  TYPE_1__ lmqtt_userdata ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC4(lmqtt_userdata * mud, int reason_code)
{
  if(mud->cb_connect_fail_ref == LUA_NOREF || mud->self_ref == LUA_NOREF)
  {
    return;
  }

  lua_State *L = FUNC1();

  FUNC3(L, LUA_REGISTRYINDEX, mud->cb_connect_fail_ref);
  FUNC3(L, LUA_REGISTRYINDEX, mud->self_ref);  // pass the userdata(client) to callback func in lua
  FUNC2(L, reason_code);
  FUNC0(L, 2, 0);
}