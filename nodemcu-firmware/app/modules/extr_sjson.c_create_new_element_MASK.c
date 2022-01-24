#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct jsonsl_state_st {int level; int type; void* lua_object_ref; int /*<<< orphan*/  pos_begin; int /*<<< orphan*/  used_count; } ;
typedef  TYPE_1__* jsonsl_t ;
typedef  int /*<<< orphan*/  jsonsl_action_t ;
struct TYPE_7__ {void* hkey_ref; void* pos_ref; void* metatable; int /*<<< orphan*/  min_needed; int /*<<< orphan*/  L; } ;
struct TYPE_6__ {TYPE_2__* data; } ;
typedef  TYPE_2__ JSN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
#define  JSONSL_T_HKEY 132 
#define  JSONSL_T_LIST 131 
#define  JSONSL_T_OBJECT 130 
#define  JSONSL_T_SPECIAL 129 
#define  JSONSL_T_STRING 128 
 void* LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  LUA_TNIL ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,struct jsonsl_state_st*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,void*) ; 

__attribute__((used)) static void
FUNC18(jsonsl_t jsn,
                   jsonsl_action_t action,
                   struct jsonsl_state_st *state,
                   const char *buf)
{
  JSN_DATA *data = jsn->data;

  FUNC0("L%d: new action %d @ %d state->type %s\n", state->level, action, state->pos_begin, FUNC5(state->type));
  FUNC0("buf: '%s' ('%.10s')\n", buf, FUNC4(data, state));

  state->lua_object_ref = LUA_NOREF;

  switch(state->type) {
    case JSONSL_T_SPECIAL:
    case JSONSL_T_STRING:
    case JSONSL_T_HKEY:
      break;

    case JSONSL_T_LIST:
    case JSONSL_T_OBJECT:
      FUNC1(data);
      state->lua_object_ref = FUNC13(data->L, 1);
      state->used_count = 0;

      FUNC12(data->L, LUA_REGISTRYINDEX, FUNC2());
      if (data->hkey_ref == LUA_NOREF) {
        // list, so append
        FUNC10(data->L, FUNC3());
        FUNC0("Adding array element\n");
      } else {
        // object, so
        FUNC12(data->L, LUA_REGISTRYINDEX, data->hkey_ref);
        FUNC17(data->L, data->hkey_ref);
        data->hkey_ref = LUA_NOREF;
        FUNC0("Adding hash element\n");
      }
      if (data->pos_ref != LUA_NOREF && state->level > 1) {
        FUNC12(data->L, LUA_REGISTRYINDEX, data->pos_ref);
        FUNC10(data->L, state->level - 1);
        FUNC11(data->L, -3);     // get the key
        FUNC14(data->L, -3);
        FUNC9(data->L, 1);
      }
      // At this point, the stack:
      // top: index/hash key
      //    : table

      int want_value = 1;
      // Invoke the checkpath method if possible
      if (data->pos_ref != LUA_NOREF) {
        FUNC12(data->L, LUA_REGISTRYINDEX, data->metatable);
        FUNC8(data->L, -1, "checkpath");
        if (FUNC16(data->L, -1) != LUA_TNIL) {
          // Call with the new table and the path as arguments
          FUNC12(data->L, LUA_REGISTRYINDEX, state->lua_object_ref);
          FUNC12(data->L, LUA_REGISTRYINDEX, data->pos_ref);
          FUNC7(data->L, 2, 1);
          want_value = FUNC15(data->L, -1);
        }
        FUNC9(data->L, 2);    // Discard the metatable and either the getfield result or retval
      }

      if (want_value) {
        FUNC12(data->L, LUA_REGISTRYINDEX, state->lua_object_ref);
        FUNC14(data->L, -3);
        FUNC9(data->L, 1);    // the table
      } else {
        FUNC9(data->L, 2);    // the index and table
      }

      break;

    default:
        FUNC0("Unhandled type %c\n", state->type);
        FUNC6(data->L, "Unhandled type");
        break;
    }

    data->min_needed = state->pos_begin;
}