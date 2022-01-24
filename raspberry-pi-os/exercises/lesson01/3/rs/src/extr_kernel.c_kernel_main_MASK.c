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

/* Variables and functions */
 unsigned long cur_proc ; 
 unsigned long FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 unsigned long FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5(void) {
  unsigned long mpid = FUNC0();

  // Only init UART on proc #0
  if (mpid == 0) {
    FUNC1();
  }

  // Wait for previous proc to finish printing their message.
  while (cur_proc != mpid)
    ;

  FUNC4("Hello, from processor ");
  FUNC3(mpid + '0');
  FUNC4("\r\n");

  // Signal the next proc to go.
  ++cur_proc;

  // Only proc #0 handles echo
  if (mpid == 0) {
    while (cur_proc != 4)
      ;

    while (1) {
      FUNC3(FUNC2());
    }
  }
}