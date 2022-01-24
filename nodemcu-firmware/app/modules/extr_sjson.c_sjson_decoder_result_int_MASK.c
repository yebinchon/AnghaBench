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
struct TYPE_3__ {int result_ref; int /*<<< orphan*/  complete; } ;
typedef  TYPE_1__ JSN_DATA ;

/* Variables and functions */
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(lua_State *L, JSN_DATA *data) {
  if (!data->complete) {
    FUNC0(L, "decode not complete");
  }

  FUNC1(L, LUA_REGISTRYINDEX, data->result_ref);
  FUNC1(L, -1, 1);
  FUNC2(L, -2);

  return 1;
}