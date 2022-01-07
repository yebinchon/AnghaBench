
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_serve_http_opts {int extra_headers; } ;
struct mg_connection {int flags; } ;


 int MG_F_SEND_AND_CLOSE ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int mg_send_response_line (struct mg_connection*,int,int ) ;

__attribute__((used)) static void mg_http_send_options(struct mg_connection *nc,
                                 struct mg_serve_http_opts *opts) {
  mg_send_response_line(nc, 200, opts->extra_headers);
  mg_printf(nc, "%s",
            "Allow: GET, POST, HEAD, CONNECT, OPTIONS"



            "\r\n\r\n");
  nc->flags |= MG_F_SEND_AND_CLOSE;
}
