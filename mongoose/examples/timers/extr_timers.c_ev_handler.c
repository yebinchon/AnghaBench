
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;




 int mg_serve_http (struct mg_connection*,struct http_message*,int ) ;
 int mg_set_timer (struct mg_connection*,double) ;
 int printf (char*,double) ;
 int s_http_server_opts ;

__attribute__((used)) static void ev_handler(struct mg_connection *c, int ev, void *ev_data) {
  switch (ev) {
    case 129:
      mg_serve_http(c, (struct http_message *) ev_data, s_http_server_opts);
      break;
    case 128: {
      double now = *(double *) ev_data;
      double next = mg_set_timer(c, 0) + 0.5;
      printf("timer event, current time: %.2lf\n", now);
      mg_set_timer(c, next);
      break;
    }
  }
}
