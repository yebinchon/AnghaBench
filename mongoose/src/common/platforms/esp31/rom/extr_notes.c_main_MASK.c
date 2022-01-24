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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GPIO_STRAP ; 
 scalar_t__ RTC ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  boot_banner ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,...) ; 
 int /*<<< orphan*/  fw_build ; 

int FUNC8(void) {
  uint32_t rst_cause = FUNC4();
  FUNC1(RTC+0x80, FUNC0(17));     // a
  FUNC3(RTC+0x80, FUNC0(12));       // b
  uint32_t boot_mode = FUNC2(GPIO_STRAP, 6, 0);  // c
  if (boot_mode & ((FUNC0(5) | FUNC0(4)) == (FUNC0(5) | FUNC0(4))) || boot_mode == 24 || boot_mode == 26) {
    FUNC1(RTC+0x74, 0xff);
  }
  if (boot_mode & ((FUNC0(5) | FUNC0(4)) == FUNC0(5))) {
    FUNC1(RTC+0x94, FUNC0(31));
    FUNC1(RTC+0x98, FUNC0(31));
    FUNC1(RTC+0x9c, FUNC0(31));
    FUNC1(RTC+0xa0, FUNC0(31));
    FUNC1(RTC+0xa4, FUNC0(31));
    FUNC1(RTC+0xa8, FUNC0(31));
    FUNC1(RTC+0xac, FUNC0(31));
  }
  if (boot_mode & ((FUNC0(5) | FUNC0(3)) == 0)) {
    // ... 1405
  }
  FUNC1(RTC+0x74, 0xff);
  FUNC5();
  FUNC6(0);
  // GPIO_STRAP ...
  FUNC7(boot_banner, fw_build, rst_cause, boot_mode);
  // rst_cause
  if (rst_cause == 1 || rst_cause == 2) {
    
  } else {
    // ...
  }
  FUNC7("%s %u", "ets_main.c", 305);
  while(1) {}
}