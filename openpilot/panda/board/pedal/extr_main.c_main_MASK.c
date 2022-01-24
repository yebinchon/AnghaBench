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
struct TYPE_2__ {int /*<<< orphan*/  (* init ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  CAN1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TIM3 ; 
 int /*<<< orphan*/  TIM3_IRQn ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* current_board ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 

int FUNC17(void) {
  FUNC6();

  // init devices
  FUNC2();
  FUNC11();
  FUNC5();
  FUNC4();

  // init board
  current_board->init();

#ifdef PEDAL_USB
  // enable USB
  usb_init();
#endif

  // pedal stuff
  FUNC3();
  FUNC1();

  // init can
  bool llcan_speed_set = FUNC9(CAN1, 5000, false, false);
  if (!llcan_speed_set) {
    FUNC12("Failed to set llcan speed");
  }

  FUNC8(CAN1);

  // 48mhz / 65536 ~= 732
  FUNC14(TIM3, 15);
  FUNC0(TIM3_IRQn);

  FUNC16();

  FUNC12("**** INTERRUPTS ON ****\n");
  FUNC7();

  // main pedal loop
  while (1) {
    FUNC10();
  }

  return 0;
}