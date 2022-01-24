#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  TYPE_2__* jsonsl_t ;
struct TYPE_9__ {TYPE_2__* jsn; void* pos_ref; void* metatable; void* null_ref; void* result_ref; int /*<<< orphan*/  min_available; int /*<<< orphan*/  min_needed; scalar_t__ buffer_len; int /*<<< orphan*/ * L; int /*<<< orphan*/ * error; scalar_t__ complete; void* buffer_ref; void* hkey_ref; } ;
struct TYPE_8__ {int levels_max; int max_callback_level; TYPE_3__* data; int /*<<< orphan*/  error_callback; int /*<<< orphan*/  action_callback_POP; int /*<<< orphan*/  action_callback_PUSH; int /*<<< orphan*/ * action_callback; int /*<<< orphan*/  pos; TYPE_1__* stack; } ;
struct TYPE_7__ {void* lua_object_ref; } ;
typedef  TYPE_3__ JSN_DATA ;

/* Variables and functions */
 int DEFAULT_DEPTH ; 
 void* LUA_NOREF ; 
 void* LUA_REFNIL ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 scalar_t__ LUA_TNIL ; 
 scalar_t__ LUA_TTABLE ; 
 int /*<<< orphan*/  cleanup_closing_element ; 
 int /*<<< orphan*/  create_new_element ; 
 int /*<<< orphan*/  error_callback ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_2__* FUNC2 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC16(lua_State *L, int argno) {
  int nlevels = DEFAULT_DEPTH;

  if (FUNC15(L, argno) == LUA_TTABLE) {
    FUNC6(L, argno, "depth");
    nlevels = FUNC14(L, argno);
    if (nlevels == 0) {
      nlevels = DEFAULT_DEPTH;
    }
    if (nlevels < 4) {
      nlevels = 4;
    }
    if (nlevels > 1000) {
      nlevels = 1000;
    }
    FUNC9(L, 1);
  }

  JSN_DATA *data = (JSN_DATA *) FUNC8(L, sizeof(JSN_DATA) + FUNC1(nlevels));
  //
  // Associate its metatable
  FUNC3(L, "sjson.decoder");
  FUNC13(L, -2);

  jsonsl_t jsn = FUNC2((jsonsl_t) (data + 1), nlevels);
  int i;

  for (i = 0; i < jsn->levels_max; i++) {
    jsn->stack[i].lua_object_ref = LUA_NOREF;
  }
  data->jsn = jsn;
  data->result_ref = LUA_NOREF;

  data->null_ref = LUA_REFNIL;
  data->metatable = LUA_NOREF;
  data->hkey_ref = LUA_NOREF;
  data->pos_ref = LUA_NOREF;
  data->buffer_ref = LUA_NOREF;
  data->complete = 0;
  data->error = NULL;
  data->L = L;
  data->buffer_len = 0;

  data->min_needed = data->min_available = jsn->pos;

  FUNC10(L, 0);
  data->null_ref = FUNC12(L, 1);

  // This may throw...
  FUNC7(L);
  data->result_ref = FUNC4(L, LUA_REGISTRYINDEX);

  if (FUNC15(L, argno) == LUA_TTABLE) {
    FUNC5(L, LUA_REGISTRYINDEX, data->null_ref);
    data->null_ref = LUA_NOREF;
    FUNC6(L, argno, "null");
    data->null_ref = FUNC12(L, 1);

    FUNC6(L, argno, "metatable");
    FUNC11(L, -1);
    data->metatable = FUNC12(L, 1);

    if (FUNC15(L, -1) != LUA_TNIL) {
      FUNC6(L, -1, "checkpath");
      if (FUNC15(L, -1) != LUA_TNIL) {
        FUNC7(L);
        data->pos_ref = FUNC12(L, 1);
      }
      FUNC9(L, 1);      // Throw away the checkpath value
    }
    FUNC9(L, 1);      // Throw away the metatable
  }

  FUNC0(data->jsn);

  jsn->action_callback = NULL;
  jsn->action_callback_PUSH = create_new_element;
  jsn->action_callback_POP = cleanup_closing_element;
  jsn->error_callback = error_callback;
  jsn->data = data;
  jsn->max_callback_level = nlevels;

  return 1;
}