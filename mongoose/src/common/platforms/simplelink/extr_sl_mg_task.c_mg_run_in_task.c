
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_q_msg {void (* member_1 ) (struct mg_mgr*,void*) ;void* member_2; int member_0; } ;


 int MG_Q_MSG_CB ;
 int OSI_NO_WAIT ;
 int osi_MsgQWrite (int *,struct mg_q_msg*,int ) ;
 int s_mg_q ;

void mg_run_in_task(void (*cb)(struct mg_mgr *mgr, void *arg), void *cb_arg) {
  struct mg_q_msg msg = {MG_Q_MSG_CB, cb, cb_arg};
  osi_MsgQWrite(&s_mg_q, &msg, OSI_NO_WAIT);
}
