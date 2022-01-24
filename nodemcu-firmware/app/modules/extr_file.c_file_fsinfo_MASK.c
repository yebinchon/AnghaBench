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
typedef  int u32_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (char*,int*,int*) ; 

__attribute__((used)) static int FUNC4( lua_State* L )
{
  u32_t total, used;
  if (FUNC3("", &total, &used)) {
    return FUNC1(L, "file system failed");
  }
  FUNC0("total: %d, used:%d\n", total, used);
  if(total>0x7FFFFFFF || used>0x7FFFFFFF || used > total)
  {
    return FUNC1(L, "file system error");
  }
  FUNC2(L, total-used);
  FUNC2(L, used);
  FUNC2(L, total);
  return 3;
}