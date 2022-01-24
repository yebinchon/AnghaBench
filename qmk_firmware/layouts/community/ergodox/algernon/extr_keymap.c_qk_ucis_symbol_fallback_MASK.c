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
struct TYPE_2__ {int count; scalar_t__* codes; } ;

/* Variables and functions */
 int /*<<< orphan*/  A_0 ; 
 int /*<<< orphan*/  A_1 ; 
 scalar_t__ KC_1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ qk_ucis_state ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4 (void) {
  for (uint8_t i = 0; i < qk_ucis_state.count - 1; i++) {
    uint8_t code;

    if ((qk_ucis_state.codes[i] >= FUNC0(A_1)) && (qk_ucis_state.codes[i] <= FUNC0(A_0)))
      code = qk_ucis_state.codes[i] - FUNC0(A_1) + KC_1;
    else
      code = qk_ucis_state.codes[i];
    FUNC1(code);
    FUNC2(code);
    FUNC3 (10);
  }
}