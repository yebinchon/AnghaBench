
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_http_proto_data {int reverse_proxy_data; int endpoints; int mp_stream; int cgi; int file; } ;


 int MG_FREE (void*) ;
 int mg_http_free_proto_data_cgi (int *) ;
 int mg_http_free_proto_data_endpoints (int *) ;
 int mg_http_free_proto_data_file (int *) ;
 int mg_http_free_proto_data_mp_stream (int *) ;
 int mg_http_free_reverse_proxy_data (int *) ;

__attribute__((used)) static void mg_http_proto_data_destructor(void *proto_data) {
  struct mg_http_proto_data *pd = (struct mg_http_proto_data *) proto_data;
  mg_http_free_proto_data_endpoints(&pd->endpoints);
  mg_http_free_reverse_proxy_data(&pd->reverse_proxy_data);
  MG_FREE(proto_data);
}
