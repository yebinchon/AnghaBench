
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int send_len; } ;
typedef TYPE_1__ libgdbr_t ;


 int pack (TYPE_1__*,char const*) ;
 int send_packet (TYPE_1__*) ;

int send_msg(libgdbr_t *g, const char *msg) {
 int ret;
 if (!g || !msg) {
  return -1;
 }
 ret = pack (g, msg);
 if (ret < 0) {
  return -1;
 }
 ret = send_packet (g);
 g->send_len = ret;
 return ret;
}
