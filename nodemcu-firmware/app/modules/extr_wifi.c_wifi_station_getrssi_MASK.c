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
typedef  int sint8 ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 

__attribute__((used)) static int FUNC4( lua_State* L ){
  sint8 rssival=FUNC3();
  FUNC0("\n\tRSSI is %d\n", rssival);
  if (rssival<10)
  {
    FUNC1(L, rssival);
  }
  else
  {
    FUNC2(L);
  }
  return 1;
}