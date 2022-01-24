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
typedef  scalar_t__ uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* enable_can_transcievers ) (int) ;} ;

/* Variables and functions */
 scalar_t__ CAN_MAX ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 TYPE_1__* current_board ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(void) {
  for (uint8_t i=0U; i < CAN_MAX; i++) {
    FUNC0(i);
  }
  current_board->enable_can_transcievers(true);
}