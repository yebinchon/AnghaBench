
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gdbr_lock; int read_buff; int send_buff; scalar_t__ send_len; int data; } ;
typedef TYPE_1__ libgdbr_t ;


 int R_FREE (int ) ;
 int r_th_lock_free (int ) ;

int gdbr_cleanup(libgdbr_t *g) {
 if (!g) {
  return -1;
 }
 R_FREE (g->data);
 g->send_len = 0;
 R_FREE (g->send_buff);
 R_FREE (g->read_buff);
 r_th_lock_free (g->gdbr_lock);
 return 0;
}
