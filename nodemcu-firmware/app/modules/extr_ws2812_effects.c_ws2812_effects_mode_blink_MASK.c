#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int size; int colorsPerLed; int /*<<< orphan*/ * values; } ;
typedef  TYPE_1__ ws2812_buffer ;
struct TYPE_4__ {int counter_mode_call; TYPE_1__* buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 TYPE_2__* state ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int FUNC2() {
  if(state->counter_mode_call % 2 == 1) {
    // on
    FUNC1();
  }
  else {
    // off
    ws2812_buffer * buffer = state->buffer;
    FUNC0(&buffer->values[0], 0, buffer->size * buffer->colorsPerLed);
  }
  return 0;
}