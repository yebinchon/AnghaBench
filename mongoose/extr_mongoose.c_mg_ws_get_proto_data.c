
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_ws_proto_data {int dummy; } ;
struct mg_http_proto_data {struct mg_ws_proto_data ws_data; } ;
struct mg_connection {int dummy; } ;


 struct mg_http_proto_data* mg_http_get_proto_data (struct mg_connection*) ;

__attribute__((used)) static struct mg_ws_proto_data *mg_ws_get_proto_data(struct mg_connection *nc) {
  struct mg_http_proto_data *htd = mg_http_get_proto_data(nc);
  return (htd != ((void*)0) ? &htd->ws_data : ((void*)0));
}
