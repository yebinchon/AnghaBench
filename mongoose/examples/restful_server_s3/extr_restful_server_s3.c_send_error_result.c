
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int mg_printf_http_chunk (struct mg_connection*,char*,char const*) ;
 int mg_send_http_chunk (struct mg_connection*,char*,int ) ;

__attribute__((used)) static void send_error_result(struct mg_connection *nc, const char *msg) {
  mg_printf_http_chunk(nc, "Error: %s", msg);
  mg_send_http_chunk(nc, "", 0);
}
