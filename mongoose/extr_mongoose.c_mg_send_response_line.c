
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int mg_mk_str (char const*) ;
 int mg_send_response_line_s (struct mg_connection*,int,int ) ;

void mg_send_response_line(struct mg_connection *nc, int status_code,
                           const char *extra_headers) {
  mg_send_response_line_s(nc, status_code, mg_mk_str(extra_headers));
}
