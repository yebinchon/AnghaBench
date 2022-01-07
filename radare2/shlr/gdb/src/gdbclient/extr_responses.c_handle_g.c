
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data_len; int data; } ;
typedef TYPE_1__ libgdbr_t ;


 int send_ack (TYPE_1__*) ;
 scalar_t__ unpack_hex (int ,int,int ) ;

int handle_g(libgdbr_t *g) {
 if (unpack_hex (g->data, g->data_len, g->data) < 0) {
  return -1;
 }
 g->data_len = g->data_len / 2;
 return send_ack (g);
}
