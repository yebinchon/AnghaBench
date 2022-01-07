
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* send_buff; size_t send_len; int sock; scalar_t__ no_ack; scalar_t__ server_debug; } ;
typedef TYPE_1__ libgdbr_t ;


 int eprintf (char*,...) ;
 int r_socket_write (int ,char*,size_t) ;

int send_packet(libgdbr_t *g) {
 if (!g) {
  eprintf ("Initialize libgdbr_t first\n");
  return -1;
 }
 if (g->server_debug) {
  g->send_buff[g->send_len] = '\0';
  eprintf ("putpkt (\"%s\");  %s\n", g->send_buff,
    g->no_ack ? "[noack mode]" : "[looking for ack]");
 }
 return r_socket_write (g->sock, g->send_buff, g->send_len);
}
