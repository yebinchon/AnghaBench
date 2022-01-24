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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/ ** FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  FILE **p = FUNC4(L);
  if(*p == stdin || *p == stdout || *p == stderr)
  {
    FUNC2(L);
    FUNC1(L, "cannot close standard file");
    return 2;
  }
  int ok = (FUNC0(*p) == 0);
  *p = NULL;
  return FUNC3(L, ok, NULL);
}