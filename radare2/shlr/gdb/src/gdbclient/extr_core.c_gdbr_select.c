
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int is_valid; } ;
struct TYPE_11__ {int multiprocess; } ;
struct TYPE_13__ {int pid; int tid; int data; TYPE_2__ stop_reason; TYPE_1__ stub_features; } ;
typedef TYPE_3__ libgdbr_t ;
typedef int cmd ;
struct TYPE_14__ {int valid; } ;


 int gdbr_lock_enter (TYPE_3__*) ;
 int gdbr_lock_leave (TYPE_3__*) ;
 scalar_t__ read_packet (TYPE_3__*,int) ;
 TYPE_6__ reg_cache ;
 scalar_t__ send_ack (TYPE_3__*) ;
 scalar_t__ send_msg (TYPE_3__*,char*) ;
 scalar_t__ strcmp (int ,char*) ;
 int strcpy (char*,char*) ;
 int write_thread_id (char*,int,int,int,int ) ;

int gdbr_select(libgdbr_t *g, int pid, int tid) {
 char cmd[64] = { 0 };
 int ret = -1;

 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 reg_cache.valid = 0;
 g->pid = pid;
 g->tid = tid;
 strcpy (cmd, "Hg");
 if ((ret = write_thread_id (cmd + 2, sizeof (cmd) - 3, pid, tid,
      g->stub_features.multiprocess)) < 0) {
  goto end;
 }
 g->stop_reason.is_valid = 0;
 if (send_msg (g, cmd) < 0 || read_packet (g, 0) < 0 || send_ack (g) < 0) {
  ret = -1;
  goto end;
 }
 if (strcmp (g->data, "OK")) {
  ret = -1;
  goto end;
 }

 ret = 0;
end:
 gdbr_lock_leave (g);
 return ret;
}
