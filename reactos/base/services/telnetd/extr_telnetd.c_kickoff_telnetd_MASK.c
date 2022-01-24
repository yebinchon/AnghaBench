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
 int /*<<< orphan*/  Cleanup ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  bShutdown ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(void)
{
  FUNC6("Attempting to start Simple TelnetD\n");

//  DetectPlatform();
  FUNC2(Cleanup, 1);

  if (!FUNC3())
    FUNC1("Unable to start socket interface\n");

  FUNC0();

  while(!bShutdown) {
    FUNC5();
  }

  FUNC4();
  return 0;
}