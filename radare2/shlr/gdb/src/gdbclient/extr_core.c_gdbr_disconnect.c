
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int regprofile; scalar_t__ valid; } ;
struct TYPE_8__ {int is_valid; } ;
struct TYPE_10__ {scalar_t__ connected; int registers; TYPE_2__ target; TYPE_1__ stop_reason; int sock; } ;
typedef TYPE_3__ libgdbr_t ;
struct TYPE_11__ {int valid; int buf; } ;


 int free (int ) ;
 int gdbr_lock_enter (TYPE_3__*) ;
 int gdbr_lock_leave (TYPE_3__*) ;
 int r_socket_close (int ) ;
 TYPE_4__ reg_cache ;

int gdbr_disconnect(libgdbr_t *g) {

 if (!g || !r_socket_close (g->sock)) {
  return -1;
 }
 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 reg_cache.valid = 0;
 g->stop_reason.is_valid = 0;
 free (reg_cache.buf);
 if (g->target.valid) {
  free (g->target.regprofile);
  free (g->registers);
 }
 g->connected = 0;
end:
 gdbr_lock_leave (g);
 return 0;
}
