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
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_5__ {int nlevels; int level; void* null_ref; TYPE_1__* stack; void* current_str_ref; } ;
struct TYPE_4__ {void* lua_key_ref; void* lua_object_ref; } ;
typedef  TYPE_1__ ENC_DATA_STATE ;
typedef  TYPE_2__ ENC_DATA ;

/* Variables and functions */
 int DEFAULT_DEPTH ; 
 void* LUA_NOREF ; 
 void* LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 void* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC11(lua_State *L) {
  int nlevels = DEFAULT_DEPTH;
  int argno = 1;

  // Validate first arg is a table
  FUNC1(L, argno++, LUA_TTABLE);

  if (FUNC10(L, argno) == LUA_TTABLE) {
    FUNC4(L, argno, "depth");
    nlevels = FUNC9(L, argno);
    if (nlevels == 0) {
      nlevels = DEFAULT_DEPTH;
    }
    if (nlevels < 4) {
      nlevels = 4;
    }
    if (nlevels > 1000) {
      nlevels = 1000;
    }
    FUNC6(L, 1);
  }

  ENC_DATA *data = (ENC_DATA *) FUNC5(L, sizeof(ENC_DATA) + nlevels * sizeof(ENC_DATA_STATE));

  // Associate its metatable
  FUNC2(L, "sjson.encoder");
  FUNC8(L, -2);

  data->nlevels = nlevels;
  data->level = -1;
  data->stack = (ENC_DATA_STATE *) (data + 1);
  data->current_str_ref = LUA_NOREF;
  int i;
  for (i = 0; i < nlevels; i++) {
    data->stack[i].lua_object_ref = LUA_NOREF;
    data->stack[i].lua_key_ref = LUA_REFNIL;
  }
  FUNC0(L, data, 1);

  data->null_ref = LUA_REFNIL;

  if (FUNC10(L, argno) == LUA_TTABLE) {
    FUNC3(L, LUA_REGISTRYINDEX, data->null_ref);
    data->null_ref = LUA_NOREF;
    FUNC4(L, argno, "null");
    data->null_ref = FUNC7(L, 1);
  }

  return 1;
}