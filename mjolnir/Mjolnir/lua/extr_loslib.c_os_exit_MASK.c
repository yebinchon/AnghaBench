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
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5 (lua_State *L) {
  int status;
  if (FUNC3(L, 1))
    status = (FUNC4(L, 1) ? EXIT_SUCCESS : EXIT_FAILURE);
  else
    status = (int)FUNC1(L, 1, EXIT_SUCCESS);
  if (FUNC4(L, 2))
    FUNC2(L);
  if (L) FUNC0(status);  /* 'if' to avoid warnings for unreachable 'return' */
  return 0;
}