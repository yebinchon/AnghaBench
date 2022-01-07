
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int s; int S; int c; int C; int t; int r; } ;
struct TYPE_11__ {int vContSupported; TYPE_1__ vcont; } ;
struct TYPE_12__ {size_t data_len; char* data; TYPE_2__ stub_features; } ;
typedef TYPE_3__ libgdbr_t ;


 int gdbr_lock_enter (TYPE_3__*) ;
 int gdbr_lock_leave (TYPE_3__*) ;
 scalar_t__ read_packet (TYPE_3__*,int) ;
 scalar_t__ send_ack (TYPE_3__*) ;
 scalar_t__ send_msg (TYPE_3__*,char*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;

int gdbr_check_vcont(libgdbr_t *g) {
 int ret = -1;
 char *ptr = ((void*)0);

 if (!g) {
  return -1;
 }

 if (!gdbr_lock_enter (g)) {
  goto end;
 }
 if (send_msg (g, "vCont?") < 0 || read_packet (g, 0) < 0 || send_ack (g) < 0) {
  ret = -1;
  goto end;
 }
 if (g->data_len == 0) {
  g->stub_features.vContSupported = 0;
  ret = 0;
  goto end;
 }
 g->data[g->data_len] = '\0';
 if (!(ptr = strtok (g->data + strlen ("vCont;"), ";"))) {
  ret = 0;
  goto end;
 }
 while (ptr) {
  switch (*ptr) {
  case 's':
   g->stub_features.vcont.s = 1;
   break;
  case 'S':
   g->stub_features.vcont.S = 1;
   break;
  case 'c':
   g->stub_features.vcont.c = 1;
   break;
  case 'C':
   g->stub_features.vcont.C = 1;
   break;
  case 't':
   g->stub_features.vcont.t = 1;
   break;
  case 'r':
   g->stub_features.vcont.r = 1;
   break;
  }
  g->stub_features.vContSupported = 1;
  ptr = strtok (((void*)0), ";");
 }

 ret = 0;
end:
 gdbr_lock_leave (g);
 return ret;
}
