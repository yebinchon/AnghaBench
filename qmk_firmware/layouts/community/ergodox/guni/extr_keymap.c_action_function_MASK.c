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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;

/* Variables and functions */
 scalar_t__ TEENSY_KEY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4(keyrecord_t *event, uint8_t id, uint8_t opt)
{
   
    if (id == TEENSY_KEY) {
        FUNC1();
        FUNC2("\n\nJump to bootloader... ");
        FUNC3(250);
        FUNC0(); // should not return
        FUNC2("not supported.\n");
    }
}