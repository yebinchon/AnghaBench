#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_12__ {int /*<<< orphan*/  lvl; } ;
typedef  TYPE_1__ luaL_Buffer ;
struct TYPE_14__ {size_t level; scalar_t__ offset; void* current_str_ref; TYPE_2__* stack; } ;
struct TYPE_13__ {scalar_t__ size; int offset; int lua_object_ref; int lua_key_ref; } ;
typedef  TYPE_2__ ENC_DATA_STATE ;
typedef  TYPE_3__ ENC_DATA ;

/* Variables and functions */
 int LUA_NOREF ; 
 int LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_3__*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int,int) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC16(lua_State *L, ENC_DATA *data) {
  if (data->level < 0) {
    return;
  }

  luaL_Buffer b;
  FUNC5(L, &b);

  // Ending condition
  while (data->level >= 0 && !b.lvl) {
    ENC_DATA_STATE *state = &data->stack[data->level];

    int finished = 0;

    if (state->size >= 0) {
      if (state->offset == 0) {
        // start of object or whatever
        FUNC3(&b, '[');
      }
      if (state->offset == state->size << 1) {
        FUNC3(&b, ']');
        finished = 1;
      } else if ((state->offset & 1) == 0) {
        if (state->offset > 0) {
          FUNC3(&b, ',');
        }
      } else {
        // output the value
        FUNC10(L, LUA_REGISTRYINDEX, state->lua_object_ref);
        FUNC10(L, -1, (state->offset >> 1) + 1);
        if (FUNC15(L)) {
          FUNC1(L, data, -1);
          FUNC8(L, 2);
          state->offset++;
          continue;
        }
        FUNC2(L, data, -1, "", "");
        FUNC12(L, -2);
        FUNC12(L, -2);
        FUNC4(&b);
      }

      state->offset++;
    } else {
      FUNC10(L, LUA_REGISTRYINDEX, state->lua_object_ref);
      // stack now contains: -1 => table
      FUNC10(L, LUA_REGISTRYINDEX, state->lua_key_ref);
      // stack now contains: -1 => nil or key; -2 => table

      if (FUNC7(L, -2)) {
        // save the key
        if (state->offset & 1) {
          FUNC14(L, state->lua_key_ref);
          state->lua_key_ref = LUA_NOREF;
          // Duplicate the key
          FUNC9(L, -2);
          state->lua_key_ref = FUNC11(L, 1);
        }

        if ((state->offset & 1) == 0) {
          // copy the key so that lua_tostring does not modify the original
          FUNC9(L, -2);
          // stack now contains: -1 => key; -2 => value; -3 => key; -4 => table
          // key
          FUNC13(L, -1);
          FUNC2(L, data, -1, state->offset ? "," : "{", ":");
          FUNC12(L, -2);
          FUNC12(L, -2);
          FUNC12(L, -2);
          FUNC12(L, -2);
        } else {
          if (FUNC15(L)) {
            FUNC1(L, data, -1);
            FUNC8(L, 3);
            state->offset++;
            continue;
          }
          FUNC2(L, data, -1, "", "");
          FUNC12(L, -2);
          FUNC12(L, -2);
          FUNC12(L, -2);
        }
        FUNC4(&b);
      } else {
        FUNC8(L, 1);
        // We have got to the end
        FUNC3(&b, '}');
        finished = 1;
      }

      state->offset++;
    }

    if (finished) {
      FUNC0(L, data);
    }
  }
  FUNC6(&b);
  data->current_str_ref = FUNC11(L, 1);
  data->offset = 0;
}