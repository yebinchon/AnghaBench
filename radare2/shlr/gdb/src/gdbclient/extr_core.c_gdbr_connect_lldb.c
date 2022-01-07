
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int g; } ;
struct TYPE_13__ {TYPE_1__ lldb; scalar_t__ qXfer_features_read; } ;
struct TYPE_14__ {int data_len; char* data; TYPE_2__ stub_features; } ;
typedef TYPE_3__ libgdbr_t ;


 int gdbr_lock_enter (TYPE_3__*) ;
 int gdbr_lock_leave (TYPE_3__*) ;
 int gdbr_read_target_xml (TYPE_3__*) ;
 scalar_t__ read_packet (TYPE_3__*,int) ;
 int reg_cache_init (TYPE_3__*) ;
 scalar_t__ send_ack (TYPE_3__*) ;
 scalar_t__ send_msg (TYPE_3__*,char*) ;

__attribute__((used)) static int gdbr_connect_lldb(libgdbr_t *g) {
 int ret = -1;
 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 reg_cache_init (g);
 if (g->stub_features.qXfer_features_read) {
  gdbr_read_target_xml (g);
 }

 if (send_msg (g, "g") < 0 || read_packet (g, 0) < 0 || send_ack (g) < 0) {
  ret = -1;
  goto end;
 }
 if (g->data_len == 0 || (g->data_len == 3 && g->data[0] == 'E')) {
  ret = -1;
  goto end;
 }
 g->stub_features.lldb.g = 1;

 ret = 0;
end:
 gdbr_lock_leave (g);
 return ret;
}
