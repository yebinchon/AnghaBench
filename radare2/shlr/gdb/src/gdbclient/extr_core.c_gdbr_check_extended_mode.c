
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int extended_mode; } ;
struct TYPE_11__ {int is_valid; } ;
struct TYPE_13__ {TYPE_2__ stub_features; int data; TYPE_1__ stop_reason; } ;
typedef TYPE_3__ libgdbr_t ;
struct TYPE_14__ {int valid; } ;


 int gdbr_lock_enter (TYPE_3__*) ;
 int gdbr_lock_leave (TYPE_3__*) ;
 int read_packet (TYPE_3__*,int) ;
 TYPE_6__ reg_cache ;
 int send_ack (TYPE_3__*) ;
 int send_msg (TYPE_3__*,char*) ;
 scalar_t__ strncmp (int ,char*,int) ;

int gdbr_check_extended_mode(libgdbr_t *g) {
 int ret = -1;

 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 g->stop_reason.is_valid = 0;
 reg_cache.valid = 0;

 ret = send_msg (g, "!");
 if (ret < 0) {
  g->stub_features.extended_mode = 0;
  goto end;
 }
 read_packet (g, 0);
 ret = send_ack (g);
 if (ret < 0) {
  g->stub_features.extended_mode = 0;
  goto end;
 }
 if (strncmp (g->data, "OK", 2)) {
  g->stub_features.extended_mode = 0;
  ret = -1;
  goto end;
 }
 g->stub_features.extended_mode = 1;

 ret = 0;
end:
 gdbr_lock_leave (g);
 return ret;
}
