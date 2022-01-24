#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_4__ {int nlevels; int /*<<< orphan*/  current_str_ref; int /*<<< orphan*/  null_ref; TYPE_1__* stack; } ;
struct TYPE_3__ {int /*<<< orphan*/  lua_key_ref; int /*<<< orphan*/  lua_object_ref; } ;
typedef  TYPE_2__ ENC_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(lua_State *L) {
  ENC_DATA *data = (ENC_DATA *)FUNC1(L, 1, "sjson.encoder");

  int i;

  for (i = 0; i < data->nlevels; i++) {
    FUNC2(L, LUA_REGISTRYINDEX, data->stack[i].lua_object_ref);
    FUNC2(L, LUA_REGISTRYINDEX, data->stack[i].lua_key_ref);
  }

  FUNC2(L, LUA_REGISTRYINDEX, data->null_ref);
  FUNC2(L, LUA_REGISTRYINDEX, data->current_str_ref);

  FUNC0("Destructor called\n");

  return 0;
}