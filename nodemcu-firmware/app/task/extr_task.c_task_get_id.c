
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ task_handle_t ;
typedef int task_callback_t ;


 int CHECK (int *,int ,char*) ;
 int TASK_DEFAULT_QUEUE_LEN ;
 int TASK_HANDLE_ALLOCATION_BRICK ;
 scalar_t__ TASK_HANDLE_MONIKER ;
 int TASK_HANDLE_SHIFT ;
 int TASK_PRIORITY_COUNT ;
 int os_memset (int *,int ,int) ;
 scalar_t__ os_realloc (int *,int) ;
 int * task_Q ;
 int task_count ;
 int * task_func ;
 int * task_init_handler (int,int ) ;

task_handle_t task_get_id(task_callback_t t) {
  int p = TASK_PRIORITY_COUNT;

    while(p--) if (!task_Q[p]) {
    CHECK(task_init_handler( p, TASK_DEFAULT_QUEUE_LEN ), 0, "Task initialisation failed");
  }

  if ( (task_count & (TASK_HANDLE_ALLOCATION_BRICK - 1)) == 0 ) {

    task_func =(task_callback_t *) os_realloc(task_func,
                        sizeof(task_callback_t)*(task_count+TASK_HANDLE_ALLOCATION_BRICK));
    CHECK(task_func, 0 , "Malloc failure in task_get_id");
    os_memset (task_func+task_count, 0, sizeof(task_callback_t)*TASK_HANDLE_ALLOCATION_BRICK);
  }

  task_func[task_count++] = t;
  return TASK_HANDLE_MONIKER + ((task_count-1) << TASK_HANDLE_SHIFT);
}
