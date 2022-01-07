
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mg_str {int p; scalar_t__ len; } ;
struct mg_connection {int flags; } ;
struct TYPE_6__ {int p; scalar_t__ len; } ;
struct TYPE_5__ {int p; scalar_t__ len; } ;
struct TYPE_4__ {int p; scalar_t__ len; } ;
struct http_message {struct mg_str* header_values; struct mg_str* header_names; TYPE_3__ body; TYPE_2__ method; TYPE_1__ uri; } ;



 int MG_F_SEND_AND_CLOSE ;
 int MG_MAX_HTTP_HEADERS ;
 int mg_printf (struct mg_connection*,char*,...) ;
 int mg_send_response_line (struct mg_connection*,int,char*) ;

__attribute__((used)) static void backend_handler(struct mg_connection *nc, int ev, void *ev_data) {
  struct http_message *hm = (struct http_message *) ev_data;
  int i;

  switch (ev) {
    case 128:
      mg_send_response_line(nc, 200,
                            "Content-Type: text/html\r\n"
                            "Connection: close\r\n");
      mg_printf(nc,
                "{\"uri\": \"%.*s\", \"method\": \"%.*s\", \"body\": \"%.*s\", "
                "\"headers\": {",
                (int) hm->uri.len, hm->uri.p, (int) hm->method.len,
                hm->method.p, (int) hm->body.len, hm->body.p);

      for (i = 0; i < MG_MAX_HTTP_HEADERS && hm->header_names[i].len > 0; i++) {
        struct mg_str hn = hm->header_names[i];
        struct mg_str hv = hm->header_values[i];
        mg_printf(nc, "%s\"%.*s\": \"%.*s\"", (i != 0 ? "," : ""), (int) hn.len,
                  hn.p, (int) hv.len, hv.p);
      }

      mg_printf(nc, "}}");

      nc->flags |= MG_F_SEND_AND_CLOSE;
      break;
    default:
      break;
  }
}
