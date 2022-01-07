
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_str {scalar_t__ len; int p; } ;
struct mg_connection {int dummy; } ;


 int mg_printf (struct mg_connection*,char*,int,...) ;
 int mg_status_message (int) ;
 int mg_version_header ;

void mg_send_response_line_s(struct mg_connection *nc, int status_code,
                             const struct mg_str extra_headers) {
  mg_printf(nc, "HTTP/1.1 %d %s\r\n", status_code,
            mg_status_message(status_code));

  mg_printf(nc, "Server: %s\r\n", mg_version_header);

  if (extra_headers.len > 0) {
    mg_printf(nc, "%.*s\r\n", (int) extra_headers.len, extra_headers.p);
  }
}
