
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct http_message {int dummy; } ;


 int MG_EV_HTTP_REQUEST ;
 int mg_http_serve_file (struct mg_connection*,struct http_message*,char*,int ,int ) ;
 int mg_mk_str (char*) ;

__attribute__((used)) static void srv1(struct mg_connection *c, int ev, void *ev_data) {
  if (ev == MG_EV_HTTP_REQUEST) {
    mg_http_serve_file(c, (struct http_message *) ev_data, "unit_test.c",
                       mg_mk_str("text/plain"), mg_mk_str(""));
  }
}
