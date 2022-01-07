
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int pid; int tid; } ;
struct TYPE_9__ {int signum; int is_valid; TYPE_2__ thread; int reason; } ;
struct TYPE_7__ {scalar_t__ multiprocess; } ;
struct TYPE_10__ {int pid; int data_len; TYPE_3__ stop_reason; int * data; TYPE_1__ stub_features; } ;
typedef TYPE_4__ libgdbr_t ;


 int R_DEBUG_REASON_DEAD ;
 int eprintf (char*,int,...) ;
 int gdbr_disconnect (TYPE_4__*) ;
 int isxdigit (int ) ;
 int sscanf (int *,char*,int*,int*) ;
 scalar_t__ strtol (int *,int *,int) ;

__attribute__((used)) static int stop_reason_terminated(libgdbr_t *g) {
 int signal = 0, pid = g->pid;
 g->stop_reason.reason = R_DEBUG_REASON_DEAD;
 if (g->stub_features.multiprocess && g->data_len > 3) {
  if (sscanf (g->data + 1, "%x;process:%x", &signal, &pid) != 2) {
   eprintf ("Message from remote: %s\n", g->data);
   return -1;
  }
  eprintf ("Process %d terminated with signal %d\n", pid, signal);
  g->stop_reason.thread.pid = pid;
  g->stop_reason.thread.tid = pid;
  g->stop_reason.signum = signal;
  g->stop_reason.is_valid = 1;
  return 0;
 }
 if (!isxdigit (g->data[1])) {
  eprintf ("Message from remote: %s\n", g->data);
  return -1;
 }
 signal = (int) strtol (g->data + 1, ((void*)0), 16);
 eprintf ("Process %d terminated with signal %d\n", g->pid, signal);
 g->stop_reason.thread.pid = pid;
 g->stop_reason.thread.tid = pid;
 g->stop_reason.signum = signal;
 g->stop_reason.is_valid = 1;

 return gdbr_disconnect (g);
}
