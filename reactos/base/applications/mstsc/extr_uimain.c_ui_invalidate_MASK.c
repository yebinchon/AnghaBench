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
 int /*<<< orphan*/  FUNC0 (char*,int,int,int,int,int) ; 
 scalar_t__ FUNC1 (int*,int*,int*,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int g_server_depth ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int) ; 

void
FUNC5(int x, int y, int cx, int cy)
{
  char * data;

  if (cx < 1 || cy < 1)
  {
    return;
  }
  if (FUNC1(&x, &y, &cx, &cy, 0, 0))
  {
    cx = (cx + 3) & ~3;
    data = (char *) FUNC4(cx * cy * 4);
    FUNC0(data, x, y, cx, cy, cx * ((g_server_depth + 7) / 8));
    FUNC2(data, cx, cy, x, y, cx, cy);
    FUNC3(data);
  }
}