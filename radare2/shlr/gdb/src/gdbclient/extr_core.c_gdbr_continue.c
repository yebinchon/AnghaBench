
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
typedef int command ;


 int CMD_C_CONT ;
 char* CMD_C_CONT_SIG ;
 int gdbr_lock_enter (TYPE_2__*) ;
 int gdbr_lock_leave (TYPE_2__*) ;
 int send_vcont (TYPE_2__*,char*,char*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int strncpy (char*,int ,int) ;
 scalar_t__ write_thread_id (char*,int,int ,int,int ) ;

int gdbr_continue(libgdbr_t *g, int pid, int tid, int sig) {
 char thread_id[64] = { 0 };
 char command[16] = { 0 };
 int ret = -1;

 if (!gdbr_lock_enter (g)) {
  goto end;
 }

 if (sig <= 0) {
  strncpy (command, CMD_C_CONT, sizeof (command) - 1);
 } else {
  snprintf (command, sizeof (command) - 1, "%s%02x", CMD_C_CONT_SIG, sig);
 }
 if (tid <= 0 || write_thread_id (thread_id, sizeof (thread_id) - 1, g->pid, tid,
      g->stub_features.multiprocess) < 0) {
  ret = send_vcont (g, command, ((void*)0));
  goto end;
 }

 ret = send_vcont (g, command, thread_id);
end:
 gdbr_lock_leave (g);
 return ret;
}
