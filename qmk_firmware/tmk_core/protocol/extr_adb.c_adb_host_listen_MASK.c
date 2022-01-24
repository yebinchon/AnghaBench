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
typedef  int /*<<< orphan*/  uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(uint8_t cmd, uint8_t data_h, uint8_t data_l) {
    FUNC2();
    FUNC1();
    FUNC6(cmd);
    FUNC3();    // Stopbit(0)
    FUNC0(200);  // Tlt/Stop to Start
    FUNC4();    // Startbit(1)
    FUNC6(data_h);
    FUNC6(data_l);
    FUNC3();  // Stopbit(0);
    FUNC5();
}