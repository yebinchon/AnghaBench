#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct jsonsl_state_st {int level; int type; int special_flags; void* lua_object_ref; scalar_t__ pos_begin; scalar_t__ pos_cur; } ;
typedef  TYPE_1__* jsonsl_t ;
typedef  int /*<<< orphan*/  jsonsl_action_t ;
struct TYPE_8__ {void* hkey_ref; void* null_ref; void* pos_ref; int complete; int /*<<< orphan*/  L; } ;
struct TYPE_7__ {scalar_t__ data; } ;
typedef  TYPE_2__ JSN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int JSONSL_SPECIALf_FALSE ; 
 int JSONSL_SPECIALf_NULL ; 
 int JSONSL_SPECIALf_NUMERIC ; 
 int JSONSL_SPECIALf_TRUE ; 
#define  JSONSL_T_HKEY 132 
#define  JSONSL_T_LIST 131 
#define  JSONSL_T_OBJECT 130 
#define  JSONSL_T_SPECIAL 129 
#define  JSONSL_T_STRING 128 
 void* LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 void* FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct jsonsl_state_st*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*,struct jsonsl_state_st*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_2__*,struct jsonsl_state_st*) ; 

__attribute__((used)) static void
FUNC17(jsonsl_t jsn,
                        jsonsl_action_t action,
                        struct jsonsl_state_st *state,
                        const char *at)
{
  JSN_DATA *data = (JSN_DATA *) jsn->data;
  FUNC0( "L%d: cc action %d state->type %s\n", state->level, action, FUNC4(state->type));
  FUNC0( "buf (%d - %d): '%.*s'\n", state->pos_begin, state->pos_cur, state->pos_cur - state->pos_begin, FUNC3(data, state));
  FUNC0( "at: '%s'\n", at);

 switch (state->type) {
   case JSONSL_T_HKEY:
      FUNC16(data, state);
      data->hkey_ref = FUNC11(data->L, 1);
      break;

   case JSONSL_T_STRING:
      FUNC10(data->L, LUA_REGISTRYINDEX, FUNC1());
      if (data->hkey_ref == LUA_NOREF) {
        // list, so append
        FUNC8(data->L, FUNC2());
      } else {
        // object, so
        FUNC10(data->L, LUA_REGISTRYINDEX, data->hkey_ref);
        FUNC14(data->L, data->hkey_ref);
        data->hkey_ref = LUA_NOREF;
      }
      FUNC16(data, state);
      FUNC13(data->L, -3);
      FUNC5(data->L, 1);
      break;

   case JSONSL_T_SPECIAL:
      FUNC0("Special flags = 0x%x\n", state->special_flags);
      // need to deal with true/false/null

      if (state->special_flags & (JSONSL_SPECIALf_TRUE|JSONSL_SPECIALf_FALSE|JSONSL_SPECIALf_NUMERIC|JSONSL_SPECIALf_NULL)) {
        if (state->special_flags & JSONSL_SPECIALf_TRUE) {
          FUNC6(data->L, 1);
        } else if (state->special_flags & JSONSL_SPECIALf_FALSE) {
          FUNC6(data->L, 0);
        } else if (state->special_flags & JSONSL_SPECIALf_NULL) {
          FUNC0("Outputting null\n");
          FUNC10(data->L, LUA_REGISTRYINDEX, data->null_ref);
        } else if (state->special_flags & JSONSL_SPECIALf_NUMERIC) {
          FUNC15(data, state);
        }

        FUNC10(data->L, LUA_REGISTRYINDEX, FUNC1());
        if (data->hkey_ref == LUA_NOREF) {
          // list, so append
          FUNC8(data->L, FUNC2());
        } else {
          // object, so
          FUNC10(data->L, LUA_REGISTRYINDEX, data->hkey_ref);
          FUNC14(data->L, data->hkey_ref);
          data->hkey_ref = LUA_NOREF;
        }
        FUNC9(data->L, -3);
        FUNC12(data->L, -4);
        FUNC13(data->L, -3);
        FUNC5(data->L, 1);
      }
      break;
   case JSONSL_T_OBJECT:
   case JSONSL_T_LIST:
      FUNC14(data->L, state->lua_object_ref);
      state->lua_object_ref = LUA_NOREF;
      if (data->pos_ref != LUA_NOREF) {
        FUNC10(data->L, LUA_REGISTRYINDEX, data->pos_ref);
        FUNC8(data->L, state->level);
        FUNC7(data->L);
        FUNC13(data->L, -3);
        FUNC5(data->L, 1);
      }
      if (state->level == 1) {
        data->complete = 1;
      }
      break;
 }
}