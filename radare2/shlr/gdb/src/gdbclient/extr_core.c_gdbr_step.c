
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int thread_id ;
struct TYPE_7__ {int multiprocess; } ;
struct TYPE_8__ {TYPE_1__ stub_features; int pid; } ;
typedef TYPE_2__ libgdbr_t ;


 char* CMD_C_STEP ;
 int gdbr_lock_enter (TYPE_2__*) ;
 int gdbr_lock_leave (TYPE_2__*) ;
 char* sdb_fmt (char*,int) ;
 int send_vcont (TYPE_2__*,char*,char*) ;
 scalar_t__ write_thread_id (char*,int,int ,int,int ) ;

int gdbr_step(libgdbr_t *g, int tid) {
 int ret = -1;
 char thread_id[64] = { 0 };

 if (!gdbr_lock_enter (g)) {
  goto end;
 }

 if (tid <= 0 || write_thread_id (thread_id, sizeof (thread_id) - 1, g->pid, tid,
      g->stub_features.multiprocess) < 0) {
  send_vcont (g, "vCont?", ((void*)0));
  send_vcont (g, sdb_fmt ("Hc%d", tid), ((void*)0));
  ret = send_vcont (g, CMD_C_STEP, ((void*)0));
  goto end;
 }

 ret = send_vcont (g, CMD_C_STEP, thread_id);
end:
 gdbr_lock_leave (g);
 return ret;
}
