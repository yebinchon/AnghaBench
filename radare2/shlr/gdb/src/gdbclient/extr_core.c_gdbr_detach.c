
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int is_valid; } ;
struct TYPE_10__ {TYPE_1__ stop_reason; int sock; } ;
typedef TYPE_2__ libgdbr_t ;
struct TYPE_11__ {int valid; } ;


 int gdbr_disconnect (TYPE_2__*) ;
 int gdbr_lock_enter (TYPE_2__*) ;
 int gdbr_lock_leave (TYPE_2__*) ;
 TYPE_4__ reg_cache ;
 int send_msg (TYPE_2__*,char*) ;

int gdbr_detach(libgdbr_t *g) {
 int ret = -1;

 if (!g || !g->sock) {
  return -1;
 }

 if (!gdbr_lock_enter (g)) {
  goto end;
 }

 reg_cache.valid = 0;
 g->stop_reason.is_valid = 0;
 ret = send_msg (g, "D");
 if (ret < 0) {
  ret = -1;
  goto end;
 }

 ret = gdbr_disconnect (g);
end:
 gdbr_lock_leave (g);
 return ret;
}
