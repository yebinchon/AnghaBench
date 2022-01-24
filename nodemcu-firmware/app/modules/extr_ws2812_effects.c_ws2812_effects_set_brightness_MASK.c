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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;
struct TYPE_2__ {int brightness; } ;

/* Variables and functions */
 char* LIBRARY_NOT_INITIALIZED_ERROR_MSG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 TYPE_1__* state ; 

__attribute__((used)) static int FUNC2(lua_State* L) {
  uint8_t brightness = FUNC1(L, 1);
  FUNC0(L, state != NULL, 1, LIBRARY_NOT_INITIALIZED_ERROR_MSG);
  FUNC0(L, brightness >= 0 && brightness < 256, 1, "should be a 0-255");
  state->brightness = brightness;
  return 0;
}