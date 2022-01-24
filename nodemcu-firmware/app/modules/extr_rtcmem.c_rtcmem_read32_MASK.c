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
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int RTC_USER_MEM_NUM_DWORDS ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6 (lua_State *L)
{
  int idx = FUNC0 (L, 1);
  int n = 1;
  if (FUNC2 (L, 2))
    n = FUNC4 (L, 2);

  if (!FUNC1 (L, n))
    return 0;

  int ret  = 0;
  while (n > 0 && idx >= 0 && idx < RTC_USER_MEM_NUM_DWORDS)
  {
    FUNC3 (L, FUNC5 (idx++));
    --n;
    ++ret;
  }
  return ret;
}