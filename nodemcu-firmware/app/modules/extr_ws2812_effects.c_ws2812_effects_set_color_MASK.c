#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {void** color; } ;

/* Variables and functions */
 int /*<<< orphan*/  LIBRARY_NOT_INITIALIZED_ERROR_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 TYPE_1__* state ; 

__attribute__((used)) static int FUNC3(lua_State* L) {
  FUNC0(L, state != NULL, 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);

  uint8_t g = FUNC1(L, 1);
  uint8_t r = FUNC1(L, 2);
  uint8_t b = FUNC1(L, 3);
  uint8_t w = FUNC2(L, 4, 0 );

  state->color[0] = g;
  state->color[1] = r;
  state->color[2] = b;
  state->color[3] = w;
  return 0;
}