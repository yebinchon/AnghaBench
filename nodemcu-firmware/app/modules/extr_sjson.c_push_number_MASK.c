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
struct jsonsl_state_st {scalar_t__ pos_begin; scalar_t__ pos_cur; } ;
struct TYPE_4__ {int /*<<< orphan*/  L; } ;
typedef  int /*<<< orphan*/  LUA_NUMBER ;
typedef  TYPE_1__ JSN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,struct jsonsl_state_st*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(JSN_DATA *data, struct jsonsl_state_st *state) {
  FUNC2(data->L, FUNC0(data, state), state->pos_cur - state->pos_begin);
  LUA_NUMBER r = FUNC4(data->L, -1);
  FUNC1(data->L, 1);
  FUNC3(data->L, r);
}