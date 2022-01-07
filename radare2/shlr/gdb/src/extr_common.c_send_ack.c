
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ server_debug; int sock; scalar_t__ no_ack; } ;
typedef TYPE_1__ libgdbr_t ;


 int eprintf (char*) ;
 scalar_t__ r_socket_write (int ,char*,int) ;

int send_ack(libgdbr_t *g) {
 if (g) {
  if (g->no_ack) {
   return 0;
  }
  if (r_socket_write (g->sock, "+", 1) < 0) {
   return -1;
  }
  if (g->server_debug) {
   eprintf ("[sent ack]\n");
  }
  return 0;
 }
 return -1;
}
