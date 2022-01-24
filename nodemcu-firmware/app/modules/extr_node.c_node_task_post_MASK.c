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
typedef  int /*<<< orphan*/  task_param_t ;
typedef  int /*<<< orphan*/  lua_State ;

/* Variables and functions */
 int /*<<< orphan*/  LUA_REGISTRYINDEX ; 
 int LUA_TFUNCTION ; 
 int LUA_TLIGHTFUNCTION ; 
 int LUA_TNUMBER ; 
 unsigned int TASK_PRIORITY_HIGH ; 
 unsigned int TASK_PRIORITY_MEDIUM ; 
 int /*<<< orphan*/  do_node_task ; 
 scalar_t__ do_node_task_handle ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9( lua_State* L )
{
  int n = 1, Ltype = FUNC6(L, 1);
  unsigned priority = TASK_PRIORITY_MEDIUM;
  if (Ltype == LUA_TNUMBER) {
    priority = (unsigned) FUNC1(L, 1);
    FUNC0(L, priority <= TASK_PRIORITY_HIGH, 1, "invalid  priority");
    Ltype = FUNC6(L, ++n);
  }
  FUNC0(L, Ltype == LUA_TFUNCTION || Ltype == LUA_TLIGHTFUNCTION, n, "invalid function");
  FUNC5(L, n);

  int task_fn_ref = FUNC3(L, LUA_REGISTRYINDEX);

  if (!do_node_task_handle)  // bind the task handle to do_node_task on 1st call
    do_node_task_handle = FUNC7(do_node_task);

  if(!FUNC8(priority, do_node_task_handle, (task_param_t)task_fn_ref)) {
    FUNC4(L, LUA_REGISTRYINDEX, task_fn_ref);
    FUNC2(L, "Task queue overflow. Task not posted");
  }
  return 0;
}