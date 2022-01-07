
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 double RAND_MAX ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int mg_printf_http_chunk (struct mg_connection*,char*,int) ;
 int mg_send_http_chunk (struct mg_connection*,char*,int ) ;
 scalar_t__ rand () ;

__attribute__((used)) static void handle_get_cpu_usage(struct mg_connection *nc) {


  int cpu_usage = (double) rand() / RAND_MAX * 100.0;


  mg_printf(nc, "%s", "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n");


  mg_printf_http_chunk(nc, "{ \"result\": %d }", cpu_usage);


  mg_send_http_chunk(nc, "", 0);
}
