
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int extended_mode; } ;
struct TYPE_12__ {int is_valid; } ;
struct TYPE_14__ {TYPE_2__ stub_features; TYPE_1__ stop_reason; int sock; } ;
typedef TYPE_3__ libgdbr_t ;
struct TYPE_15__ {int valid; } ;


 char* CMD_ATTACH ;
 char* calloc (size_t,int) ;
 int free (char*) ;
 int gdbr_check_extended_mode (TYPE_3__*) ;
 int gdbr_lock_enter (TYPE_3__*) ;
 int gdbr_lock_leave (TYPE_3__*) ;
 int handle_attach (TYPE_3__*) ;
 scalar_t__ read_packet (TYPE_3__*,int) ;
 TYPE_5__ reg_cache ;
 int send_msg (TYPE_3__*,char*) ;
 int snprintf (char*,size_t,char*,char*,int) ;
 int strlen (char*) ;

int gdbr_attach(libgdbr_t *g, int pid) {
 int ret = -1;
 char *cmd = ((void*)0);
 size_t buffer_size;

 if (!g || !g->sock) {
  return -1;
 }

 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 g->stop_reason.is_valid = 0;
 reg_cache.valid = 0;

 if (g->stub_features.extended_mode == -1) {
  gdbr_check_extended_mode (g);
 }

 if (!g->stub_features.extended_mode) {

  ret = -2;
  goto end;
 }

 buffer_size = strlen (CMD_ATTACH) + (sizeof (int) * 2) + 1;
 cmd = calloc (buffer_size, sizeof (char));
 if (!cmd) {
  ret = -1;
  goto end;
 }

 ret = snprintf (cmd, buffer_size, "%s%x", CMD_ATTACH, pid);
 if (ret < 0) {
  goto end;
 }

 ret = send_msg (g, cmd);
 if (ret < 0) {
  goto end;
 }

 if (read_packet (g, 0) < 0) {
  ret = -1;
  goto end;
 }

 ret = handle_attach (g);
end:
 if (cmd) {
  free (cmd);
 }
 gdbr_lock_leave (g);
 return ret;
}
