
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data_len; int last_code; } ;
typedef TYPE_1__ libgdbr_t ;


 int MSG_NOT_SUPPORTED ;
 int MSG_OK ;
 int send_ack (TYPE_1__*) ;

int handle_P(libgdbr_t *g) {
 if (g->data_len == 0) {
  g->last_code = MSG_NOT_SUPPORTED;
 } else {
  g->last_code = MSG_OK;
 }
 return send_ack (g);
}
