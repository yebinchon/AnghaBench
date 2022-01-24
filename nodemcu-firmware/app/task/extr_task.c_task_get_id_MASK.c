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
typedef  scalar_t__ task_handle_t ;
typedef  int /*<<< orphan*/  task_callback_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TASK_DEFAULT_QUEUE_LEN ; 
 int TASK_HANDLE_ALLOCATION_BRICK ; 
 scalar_t__ TASK_HANDLE_MONIKER ; 
 int TASK_HANDLE_SHIFT ; 
 int TASK_PRIORITY_COUNT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * task_Q ; 
 int task_count ; 
 int /*<<< orphan*/ * task_func ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 

task_handle_t FUNC4(task_callback_t t) {
  int p = TASK_PRIORITY_COUNT;
  /* Initialise and uninitialised Qs with the default Q len */
    while(p--) if (!task_Q[p]) {
    FUNC0(FUNC3( p, TASK_DEFAULT_QUEUE_LEN ), 0, "Task initialisation failed");
  }

  if ( (task_count & (TASK_HANDLE_ALLOCATION_BRICK - 1)) == 0 ) {
    /* With a brick size of 4 this branch is taken at 0, 4, 8 ... and the new size is +4 */
    task_func =(task_callback_t *) FUNC2(task_func,
                        sizeof(task_callback_t)*(task_count+TASK_HANDLE_ALLOCATION_BRICK));
    FUNC0(task_func, 0 , "Malloc failure in task_get_id");
    FUNC1 (task_func+task_count, 0, sizeof(task_callback_t)*TASK_HANDLE_ALLOCATION_BRICK);
  }

  task_func[task_count++] = t;
  return TASK_HANDLE_MONIKER + ((task_count-1)  << TASK_HANDLE_SHIFT);
}