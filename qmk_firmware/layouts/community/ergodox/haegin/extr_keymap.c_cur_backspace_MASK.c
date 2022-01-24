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
typedef  int /*<<< orphan*/  qk_tap_dance_state_t ;
struct TYPE_2__ {int a; int b; } ;

/* Variables and functions */
 int /*<<< orphan*/  KC_BSPC ; 
 TYPE_1__ fib_bspc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2 (qk_tap_dance_state_t *state) {
  int next_fib = fib_bspc.a + fib_bspc.b;
  fib_bspc.a = fib_bspc.b;
  fib_bspc.b = next_fib;
  for (int i=0; i < next_fib; i++) {
    FUNC1(KC_BSPC);
    FUNC0(KC_BSPC);
  }
}