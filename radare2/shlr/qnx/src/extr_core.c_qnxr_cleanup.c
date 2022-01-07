
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int read_buff; scalar_t__ send_len; int send_buff; } ;
typedef TYPE_1__ libqnxr_t ;


 int free (int ) ;

int qnxr_cleanup (libqnxr_t *g) {
 if (!g) return -1;
 free (g->send_buff);
 g->send_len = 0;
 free (g->read_buff);
 return 0;
}
