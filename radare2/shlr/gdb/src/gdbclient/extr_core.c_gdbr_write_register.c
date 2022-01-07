
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int libgdbr_t ;
typedef int command ;
struct TYPE_2__ {int valid; } ;


 char* CMD_WRITEREG ;
 int eprintf (char*) ;
 int gdbr_lock_enter (int *) ;
 int gdbr_lock_leave (int *) ;
 int handle_P (int *) ;
 int memcpy (char*,char*,int) ;
 int pack_hex (char*,int,char*) ;
 scalar_t__ read_packet (int *,int) ;
 TYPE_1__ reg_cache ;
 scalar_t__ send_msg (int *,char*) ;
 int snprintf (char*,int,char*,char*,int) ;

int gdbr_write_register(libgdbr_t *g, int index, char *value, int len) {
 int ret = -1;
 char command[255] = { 0 };
 if (!g) {
  return -1;
 }
 if (!gdbr_lock_enter (g)) {
  goto end;
 }

 reg_cache.valid = 0;
 ret = snprintf (command, sizeof (command) - 1, "%s%x=", CMD_WRITEREG, index);
 if (len + ret >= sizeof (command)) {
  eprintf ("command is too small\n");
  ret = -1;
  goto end;
 }
 memcpy (command + ret, value, len);
 pack_hex (value, len, (command + ret));
 if (send_msg (g, command) < 0) {
  ret = -1;
  goto end;
 }
 if (read_packet (g, 0) >= 0) {
  handle_P (g);
 }

 ret = 0;
end:
 gdbr_lock_leave (g);
 return ret;
}
