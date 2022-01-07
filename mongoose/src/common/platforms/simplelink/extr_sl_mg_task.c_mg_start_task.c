
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_q_msg {int dummy; } ;
typedef scalar_t__ mg_init_cb ;


 scalar_t__ OSI_OK ;
 int mg_task ;
 scalar_t__ osi_MsgQCreate (int *,char*,int,int) ;
 scalar_t__ osi_TaskCreate (int ,char const*,int,void*,int,int *) ;
 int s_mg_q ;

bool mg_start_task(int priority, int stack_size, mg_init_cb mg_init) {
  if (osi_MsgQCreate(&s_mg_q, "MG", sizeof(struct mg_q_msg), 16) != OSI_OK) {
    return 0;
  }
  if (osi_TaskCreate(mg_task, (const signed char *) "MG", stack_size,
                     (void *) mg_init, priority, ((void*)0)) != OSI_OK) {
    return 0;
  }
  return 1;
}
