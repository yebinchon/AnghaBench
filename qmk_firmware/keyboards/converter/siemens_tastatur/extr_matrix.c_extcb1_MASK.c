#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  expchannel_t ;
typedef  int /*<<< orphan*/  EXTDriver ;

/* Variables and functions */
 int /*<<< orphan*/  EXTD1 ; 
 int /*<<< orphan*/  GPIOA ; 
 int /*<<< orphan*/  GPIOB ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 void* porta_buffer ; 
 void* portb_buffer ; 

__attribute__((used)) static void FUNC5(EXTDriver *extp, expchannel_t channel) {

    (void)extp;
    (void)channel;
    FUNC0();
    porta_buffer = FUNC4(GPIOA);
    portb_buffer = FUNC4(GPIOB);
    //Disable further interrupts that might occur on same button press.
    FUNC2(&EXTD1,0);
    FUNC2(&EXTD1,1);
    FUNC2(&EXTD1,2);
    FUNC2(&EXTD1,9);
    FUNC2(&EXTD1,10);
    FUNC2(&EXTD1,12);
    FUNC2(&EXTD1,13);
    FUNC2(&EXTD1,14);
    FUNC2(&EXTD1,15);

    FUNC3(&EXTD1,0);
    FUNC3(&EXTD1,1);
    FUNC3(&EXTD1,2);
    FUNC3(&EXTD1,9);
    FUNC3(&EXTD1,10);
    FUNC3(&EXTD1,12);
    FUNC3(&EXTD1,13);
    FUNC3(&EXTD1,14);
    FUNC3(&EXTD1,15);
    FUNC1();
}