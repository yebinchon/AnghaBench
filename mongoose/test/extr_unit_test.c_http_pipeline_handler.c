
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_connection {TYPE_1__* mgr; } ;
struct TYPE_2__ {scalar_t__ user_data; } ;


 int MG_EV_HTTP_REPLY ;
 int MG_EV_HTTP_REQUEST ;
 int mg_printf (struct mg_connection*,char*) ;
 int mg_send_response_line (struct mg_connection*,int,char*) ;

__attribute__((used)) static void http_pipeline_handler(struct mg_connection *c, int ev,
                                  void *ev_data) {
  (void) ev_data;
  int *status = (int *) c->mgr->user_data;
  if (ev == MG_EV_HTTP_REQUEST) {

    mg_send_response_line(c, 200,
                          "Content-Type: text/plain\r\nContent-Length: 5\r\n");
    mg_printf(c, "Hello");
    *status = *status + 1;
  } else if (ev == MG_EV_HTTP_REPLY) {

    *status = *status + 10;
  }
}
