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
struct jsonsl_state_st {int pos_cur; int pos_begin; } ;
typedef  int /*<<< orphan*/  luaL_Buffer ;
struct TYPE_4__ {int /*<<< orphan*/  L; } ;
typedef  TYPE_1__ JSN_DATA ;

/* Variables and functions */
 int FUNC0 (char const) ; 
 char* FUNC1 (TYPE_1__*,struct jsonsl_state_st*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(JSN_DATA *data, struct jsonsl_state_st *state) {
  luaL_Buffer b;
  FUNC2(data->L, &b);
  int i;
  const char *c = FUNC1(data, state) + 1;
  for (i = 0; i < state->pos_cur - state->pos_begin - 1; i++) {
    int nc = c[i];
    if (nc == '\\') {
      i++;
      nc = c[i] & 255;
      switch (c[i]) {
        case 'b':
          nc = '\b';
          break;
        case 'f':
          nc = '\f';
          break;
        case 'n':
          nc = '\n';
          break;
        case 'r':
          nc = '\r';
          break;
        case 't':
          nc = '\t';
          break;
        case 'u':
          nc = FUNC0(c[++i]) << 12;
          nc += FUNC0(c[++i]) << 8;
          nc += FUNC0(c[++i]) << 4;
          nc += FUNC0(c[++i])     ;
          FUNC5(&b, nc);
          continue;
      }
    }
    FUNC4(&b, nc);
  }
  FUNC3(&b);
}