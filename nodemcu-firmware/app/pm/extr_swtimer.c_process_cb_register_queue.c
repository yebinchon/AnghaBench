
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8 ;
struct TYPE_4__ {struct TYPE_4__* next; int suspend_policy; void* tmr_cb_ptr; } ;
typedef TYPE_1__ tmr_cb_queue_t ;
typedef int task_param_t ;


 int SWTMR_DBG (char*) ;
 int cb_register_task_id ;
 int free (TYPE_1__*) ;
 int lua_getstate () ;
 TYPE_1__* register_queue ;
 int swtmr_cb_register (void*,int ) ;
 int task_post_low (int ,int) ;

__attribute__((used)) static void process_cb_register_queue(task_param_t param, uint8 priority)
{
  if(!lua_getstate()){
    SWTMR_DBG("L== NULL, Lua not yet started! posting task");
    task_post_low(cb_register_task_id, 0);
    return;
  }
  while(register_queue != ((void*)0)){
    tmr_cb_queue_t* register_queue_ptr = register_queue;
    void* cb_ptr_tmp = register_queue_ptr->tmr_cb_ptr;
    swtmr_cb_register(cb_ptr_tmp, register_queue_ptr->suspend_policy);
    register_queue = register_queue->next;
    free(register_queue_ptr);
  }
  return;
}
