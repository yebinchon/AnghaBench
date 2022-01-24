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
struct TYPE_4__ {int /*<<< orphan*/  buffer_ref; TYPE_2__* buffer; int /*<<< orphan*/  brightness; int /*<<< orphan*/  mode_delay; int /*<<< orphan*/  speed; } ;
typedef  TYPE_1__ ws2812_effects ;
struct TYPE_5__ {int colorsPerLed; } ;
typedef  TYPE_2__ ws2812_buffer ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  BRIGHTNESS_DEFAULT ; 
 int /*<<< orphan*/  DELAY_DEFAULT ; 
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int /*<<< orphan*/  SPEED_DEFAULT ; 
 scalar_t__ FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* state ; 

__attribute__((used)) static int FUNC6(lua_State *L) {
  ws2812_buffer * buffer = (ws2812_buffer*)FUNC3(L, 1, "ws2812.buffer");
  FUNC2(L, buffer != NULL, 1, "no valid buffer provided");
  // get rid of old state
  if (state != NULL) {
    FUNC5(L, LUA_REGISTRYINDEX, state->buffer_ref);
    FUNC1((void *) state);
  }
  // Allocate memory and set all to zero
  size_t size = sizeof(ws2812_effects) + buffer->colorsPerLed*sizeof(uint8_t);
  state = (ws2812_effects *) FUNC0(1,size);
  // initialize
  state->speed = SPEED_DEFAULT;
  state->mode_delay = DELAY_DEFAULT;
  state->brightness = BRIGHTNESS_DEFAULT;
  state->buffer = buffer;

  state->buffer_ref = FUNC4(L, LUA_REGISTRYINDEX);

  return 0;
}