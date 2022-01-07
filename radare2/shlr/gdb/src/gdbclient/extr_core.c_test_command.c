
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int data_len; int read_buff; } ;
typedef TYPE_1__ libgdbr_t ;


 int gdbr_lock_enter (TYPE_1__*) ;
 int gdbr_lock_leave (TYPE_1__*) ;
 int hexdump (int ,int ,int ) ;
 int read_packet (TYPE_1__*,int) ;
 int send_msg (TYPE_1__*,char const*) ;

int test_command(libgdbr_t *g, const char *command) {
 int ret = -1;

 if (!gdbr_lock_enter (g)) {
  goto end;
 }

 if ((ret = send_msg (g, command)) < 0) {
  goto end;
 }
 read_packet (g, 0);
 hexdump (g->read_buff, g->data_len, 0);

 ret = 0;
end:
 gdbr_lock_leave (g);
 return ret;
}
