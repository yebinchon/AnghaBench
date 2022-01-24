#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
struct TYPE_4__ {struct TYPE_4__* next; int /*<<< orphan*/  suspend_policy; void* tmr_cb_ptr; } ;
typedef  TYPE_1__ tmr_cb_queue_t ;
typedef  int /*<<< orphan*/  task_param_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  cb_register_task_id ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* register_queue ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(task_param_t param, uint8 priority)
{
  if(!FUNC2()){
    FUNC0("L== NULL, Lua not yet started! posting task");
    FUNC4(cb_register_task_id, false); //post task to process next item in queue
    return;
  }
  while(register_queue != NULL){
    tmr_cb_queue_t* register_queue_ptr = register_queue;
    void* cb_ptr_tmp = register_queue_ptr->tmr_cb_ptr;
    FUNC3(cb_ptr_tmp, register_queue_ptr->suspend_policy);
    register_queue = register_queue->next;
    FUNC1(register_queue_ptr);
  }
  return;
}