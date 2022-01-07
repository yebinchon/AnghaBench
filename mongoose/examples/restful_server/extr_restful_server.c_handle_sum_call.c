
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;
struct http_message {int body; } ;
typedef int n2 ;
typedef int n1 ;


 int mg_get_http_var (int *,char*,char*,int) ;
 int mg_printf (struct mg_connection*,char*,char*) ;
 int mg_printf_http_chunk (struct mg_connection*,char*,double) ;
 int mg_send_http_chunk (struct mg_connection*,char*,int ) ;
 double strtod (char*,int *) ;

__attribute__((used)) static void handle_sum_call(struct mg_connection *nc, struct http_message *hm) {
  char n1[100], n2[100];
  double result;


  mg_get_http_var(&hm->body, "n1", n1, sizeof(n1));
  mg_get_http_var(&hm->body, "n2", n2, sizeof(n2));


  mg_printf(nc, "%s", "HTTP/1.1 200 OK\r\nTransfer-Encoding: chunked\r\n\r\n");


  result = strtod(n1, ((void*)0)) + strtod(n2, ((void*)0));
  mg_printf_http_chunk(nc, "{ \"result\": %lf }", result);
  mg_send_http_chunk(nc, "", 0);
}
