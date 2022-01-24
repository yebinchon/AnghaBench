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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  spiObjectIdx0; } ;
typedef  int /*<<< orphan*/  Fd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 TYPE_1__ sysObj ; 

int FUNC5(Fd_t fd, unsigned char *pBuff, int len) {
  if (len > 512) {
    FUNC4("BUFFER TOO SMALL");
    return 0;
  }

  FUNC0();
  uint8_t dummy[512];
  FUNC1(pBuff, dummy, len);
  FUNC2(sysObj.spiObjectIdx0);
  FUNC3();

  return len;
}