
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ multiprocess; } ;
struct TYPE_10__ {int is_valid; } ;
struct TYPE_12__ {scalar_t__ pid; TYPE_2__ stub_features; TYPE_1__ stop_reason; int sock; } ;
typedef TYPE_3__ libgdbr_t ;
struct TYPE_13__ {int valid; } ;


 int gdbr_kill_pid (TYPE_3__*,scalar_t__) ;
 int gdbr_lock_enter (TYPE_3__*) ;
 int gdbr_lock_leave (TYPE_3__*) ;
 TYPE_5__ reg_cache ;
 int send_msg (TYPE_3__*,char*) ;

int gdbr_kill(libgdbr_t *g) {
 int ret = -1;

 if (!g || !g->sock) {
  return -1;
 }

 if (!gdbr_lock_enter (g)) {
  goto end;
 }

 reg_cache.valid = 0;
 g->stop_reason.is_valid = 0;

 if (g->stub_features.multiprocess) {
  if (g->pid <= 0) {
   ret = -1;
   goto end;
  }
  ret = gdbr_kill_pid (g, g->pid);
  goto end;
 }

 if ((ret = send_msg (g, "k")) < 0) {
  goto end;
 }

 ret = 0;
end:
 gdbr_lock_leave (g);
 return ret;
}
