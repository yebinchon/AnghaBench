
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_data {char* to_send; } ;
struct mg_connection {int dummy; } ;


 int mg_printf (struct mg_connection*,char*,char*) ;

__attribute__((used)) static void do_send(struct simple_data *d, struct mg_connection *nc) {
  if (d->to_send[0] != '\0') {
    mg_printf(nc, "%s", d->to_send);
  }
}
