
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libgdbr_t ;


 int gdbr_lock_enter (int *) ;
 int gdbr_lock_leave (int *) ;
 int handle_stop_reason (int *) ;
 scalar_t__ read_packet (int *,int) ;
 scalar_t__ send_msg (int *,char*) ;

int gdbr_stop_reason(libgdbr_t *g) {
 int ret = -1;
 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 if (!g || send_msg (g, "?") < 0 || read_packet (g, 0) < 0) {
  ret = -1;
  goto end;
 }
 ret = handle_stop_reason (g);
end:
 gdbr_lock_leave (g);
 return ret;
}
