
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ os_param_t ;
typedef int lua_State ;
typedef int DATA ;


 int FALSE ;
 int ROTARY_CHANNEL_COUNT ;
 int TRUE ;
 int ** data ;
 scalar_t__ lrotary_dequeue_single (int *,int *) ;
 int * lua_getstate () ;
 int task_post_medium (int ,int ) ;
 int tasknumber ;

__attribute__((used)) static void lrotary_task(os_param_t param, uint8_t prio)
{
  (void) param;
  (void) prio;

  uint8_t *task_queue_ptr = (uint8_t*) param;
  if (task_queue_ptr) {

    *task_queue_ptr = 0;
  }

  int id;
  bool need_to_post = FALSE;
  lua_State *L = lua_getstate();

  for (id = 0; id < ROTARY_CHANNEL_COUNT; id++) {
    DATA *d = data[id];
    if (d) {
      if (lrotary_dequeue_single(L, d)) {
 need_to_post = TRUE;
      }
    }
  }

  if (need_to_post) {

    task_post_medium(tasknumber, 0);
  }
}
