
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_result {int member_1; int member_0; } ;
struct work_request {int conn_id; int member_0; } ;
struct mg_mgr {int dummy; } ;
typedef int res ;
typedef int req ;


 int mg_broadcast (struct mg_mgr*,int ,void*,int) ;
 int on_work_complete ;
 int perror (char*) ;
 int rand () ;
 scalar_t__ read (int ,struct work_request*,int) ;
 scalar_t__ s_received_signal ;
 int sleep (int) ;
 int * sock ;

void *worker_thread_proc(void *param) {
  struct mg_mgr *mgr = (struct mg_mgr *) param;
  struct work_request req = {0};

  while (s_received_signal == 0) {
    if (read(sock[1], &req, sizeof(req)) < 0)
      perror("Reading worker sock");
    int r = rand() % 10;
    sleep(r);
    struct work_result res = {req.conn_id, r};
    mg_broadcast(mgr, on_work_complete, (void *)&res, sizeof(res));
  }
  return ((void*)0);
}
