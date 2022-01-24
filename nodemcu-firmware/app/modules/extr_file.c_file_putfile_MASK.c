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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9( lua_State* L )
{
  // Warning this code C calls other file_* routines to avoid duplication code.  These
  // use Lua stack addressing of arguments, so this does Lua stack maniplation to
  // align these
  int ret_cnt = 0;
  FUNC8(L, 2);
  FUNC5(L, 2); //dup contents onto the ToS [3]
  FUNC4(L, "w+");
  FUNC7(L, 2);
  // Stack [1] = filename; [2] "w+" [3] contents;
  FUNC1(L);
  // Stack [1] = filename; [2] "w+" [3] contents; [4] FD or nil

  if (!FUNC3(L, -1)) {
    FUNC6(L, 2);  //dump "w+" attribute literal
    FUNC7(L, 1);
    // Stack [1] = FD; [2] contents
    FUNC2(L);
    // Stack [1] = FD; [2] contents; [3] result status
    FUNC6(L, 2);  //dump contents
    FUNC0(L);
    FUNC6(L, 1); // Dump FD leaving status as ToS
  }
  return 1;
}