#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ESR; int /*<<< orphan*/  RF1R; int /*<<< orphan*/  RF0R; int /*<<< orphan*/  TSR; int /*<<< orphan*/  MSR; } ;
typedef  TYPE_1__ CAN_TypeDef ;

/* Variables and functions */
 TYPE_1__* CAN1 ; 
 TYPE_1__* CAN2 ; 
 TYPE_1__* CAN3 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int can_err_cnt ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(CAN_TypeDef *CAN) {
  FUNC0();

  #ifdef DEBUG
    if (CAN==CAN1) puts("CAN1:  ");
    if (CAN==CAN2) puts("CAN2:  ");
    #ifdef CAN3
      if (CAN==CAN3) puts("CAN3:  ");
    #endif
    puts("MSR:");
    puth(CAN->MSR);
    puts(" TSR:");
    puth(CAN->TSR);
    puts(" RF0R:");
    puth(CAN->RF0R);
    puts(" RF1R:");
    puth(CAN->RF1R);
    puts(" ESR:");
    puth(CAN->ESR);
    puts("\n");
  #endif

  can_err_cnt += 1;
  FUNC2(CAN);
  FUNC1();
}