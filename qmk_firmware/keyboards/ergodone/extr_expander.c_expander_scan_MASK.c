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

/* Variables and functions */
 int EXPANDER_ADDR ; 
 int I2C_WRITE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int expander_status ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
  FUNC1("expander status: %d ... ", expander_status);
  uint8_t ret = FUNC3(EXPANDER_ADDR | I2C_WRITE);
  if (ret == 0) {
    FUNC4();
    if (expander_status == 0) {
      FUNC1("attached\n");
      expander_status = 1;
      FUNC2();
      FUNC0();
    }
  }
  else {
    if (expander_status == 1) {
      FUNC1("detached\n");
      expander_status = 0;
      FUNC0();
    }
  }
  FUNC1("%d\n", expander_status);
}