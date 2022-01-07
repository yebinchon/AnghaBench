
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int thread_id ;
typedef int msg ;
struct TYPE_9__ {scalar_t__ multiprocess; } ;
struct TYPE_10__ {int data_len; char* data; TYPE_1__ stub_features; } ;
typedef TYPE_2__ libgdbr_t ;


 int gdbr_lock_enter (TYPE_2__*) ;
 int gdbr_lock_leave (TYPE_2__*) ;
 scalar_t__ read_packet (TYPE_2__*,int) ;
 scalar_t__ send_ack (TYPE_2__*) ;
 scalar_t__ send_msg (TYPE_2__*,char*) ;
 scalar_t__ snprintf (char*,int,char*,char*) ;
 scalar_t__ write_thread_id (char*,int,int,int,scalar_t__) ;

bool gdbr_is_thread_dead (libgdbr_t *g, int pid, int tid) {
 bool ret = 0;

 if (!g) {
  return 0;
 }
 if (g->stub_features.multiprocess && pid <= 0) {
  return 0;
 }

 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 char msg[64] = { 0 }, thread_id[63] = { 0 };
 if (write_thread_id (thread_id, sizeof (thread_id) - 1, pid, tid,
      g->stub_features.multiprocess) < 0) {
  goto end;
 }
 if (snprintf (msg, sizeof (msg) - 1, "T%s", thread_id) < 0) {
  goto end;
 }
 if (send_msg (g, msg) < 0 || read_packet (g, 0) < 0 || send_ack (g) < 0) {
  goto end;
 }
 if (g->data_len == 3 && g->data[0] == 'E') {
  ret = 1;
 } else {
  ret = 0;
 }

end:
 gdbr_lock_leave (g);
 return ret;
}
