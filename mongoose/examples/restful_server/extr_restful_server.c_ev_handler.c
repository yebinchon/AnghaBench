
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_connection {int dummy; } ;
struct TYPE_2__ {int len; int p; } ;
struct http_message {TYPE_1__ body; int uri; } ;
typedef int buf ;



 int handle_sum_call (struct mg_connection*,struct http_message*) ;
 int memcpy (char*,int ,int) ;
 int mg_serve_http (struct mg_connection*,struct http_message*,int ) ;
 int mg_vcmp (int *,char*) ;
 int printf (char*,char*) ;
 int s_http_server_opts ;

__attribute__((used)) static void ev_handler(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;

  switch (ev) {
    case 128:
      if (mg_vcmp(&hm->uri, "/api/v1/sum") == 0) {
        handle_sum_call(nc, hm);
      } else if (mg_vcmp(&hm->uri, "/printcontent") == 0) {
        char buf[100] = {0};
        memcpy(buf, hm->body.p,
               sizeof(buf) - 1 < hm->body.len ? sizeof(buf) - 1 : hm->body.len);
        printf("%s\n", buf);
      } else {
        mg_serve_http(nc, hm, s_http_server_opts);
      }
      break;
    default:
      break;
  }
}
