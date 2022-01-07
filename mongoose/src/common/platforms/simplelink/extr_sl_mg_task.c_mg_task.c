
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_q_msg {int type; int arg; int (* cb ) (struct mg_mgr*,int ) ;} ;
struct mg_mgr {int dummy; } ;
typedef int (* mg_init_cb ) (struct mg_mgr*) ;



 scalar_t__ OSI_OK ;
 int mg_mgr_init (struct mg_mgr*,int *) ;
 int mg_mgr_poll (struct mg_mgr*,int) ;
 scalar_t__ osi_MsgQRead (int *,struct mg_q_msg*,int) ;
 int s_mg_q ;
 int stub1 (struct mg_mgr*,int ) ;

__attribute__((used)) static void mg_task(void *arg) {
  struct mg_mgr mgr;
  mg_init_cb mg_init = (mg_init_cb) arg;
  mg_mgr_init(&mgr, ((void*)0));
  mg_init(&mgr);
  while (1) {
    struct mg_q_msg msg;
    mg_mgr_poll(&mgr, 1);
    if (osi_MsgQRead(&s_mg_q, &msg, 1) != OSI_OK) continue;
    switch (msg.type) {
      case 128: {
        msg.cb(&mgr, msg.arg);
      }
    }
  }
}
