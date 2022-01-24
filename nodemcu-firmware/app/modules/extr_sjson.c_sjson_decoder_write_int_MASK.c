#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_4__ {scalar_t__ buffer_ref; int min_needed; int min_available; size_t buffer_len; scalar_t__ complete; scalar_t__ error; int /*<<< orphan*/  jsn; void* buffer; int /*<<< orphan*/ * L; } ;
typedef  TYPE_1__ JSN_DATA ;

/* Variables and functions */
 scalar_t__ LUA_NOREF ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int,size_t*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int) ; 
 int FUNC13 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_1__*) ; 

__attribute__((used)) static int FUNC15(lua_State *L, int udata_pos, int string_pos) {
  JSN_DATA *data = (JSN_DATA *)FUNC5(L, udata_pos, "sjson.decoder");
  size_t len;

  const char *str = FUNC4(L, string_pos, &len);

  if (data->error) {
    FUNC6(L, "JSON parse error: previous call");
  }

  if (!data->complete) {
    data->L = L;

    // Merge into any existing buffer and deal with discard
    if (data->buffer_ref != LUA_NOREF) {
      luaL_Buffer b;
      FUNC3(L, &b);

      FUNC11(L, LUA_REGISTRYINDEX, data->buffer_ref);
      size_t prev_len;
      const char *prev_buffer = FUNC4(L, -1, &prev_len);
      FUNC9(L, 1);              // But string still referenced so it cannot move
      int discard = data->min_needed - data->min_available;
      prev_buffer += discard;
      prev_len -= discard;
      if (prev_len > 0) {
        FUNC1(&b, prev_buffer, prev_len);
      }
      data->min_available += discard;

      FUNC8(L, LUA_REGISTRYINDEX, data->buffer_ref);
      data->buffer_ref = LUA_NOREF;

      FUNC10(L, string_pos);
      FUNC2(&b);
      FUNC7(&b);
    } else {
      FUNC10(L, string_pos);
    }

    size_t blen;
    data->buffer = FUNC4(L, -1, &blen);
    data->buffer_len = blen;
    data->buffer_ref = FUNC12(L, 1);

    FUNC0(data->jsn, str, len);

    if (data->error) {
      FUNC6(L, "JSON parse error: %s", data->error);
    }
  }

  if (data->complete) {
    // We no longer need the buffer
    FUNC14(L, data);

    return FUNC13(L, data);
  }

  return 0;
}