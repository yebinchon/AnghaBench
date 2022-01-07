
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_len; char* data; } ;
typedef TYPE_1__ libgdbr_t ;


 int send_ack (TYPE_1__*) ;

int handle_attach(libgdbr_t *g) {
 if (g->data_len == 3 && g->data[0] == 'E') {
  send_ack (g);
  return -1;
 }
 return send_ack (g);
}
