
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_http_proto_data {int dummy; } ;
struct mg_connection {scalar_t__ proto_data; } ;



__attribute__((used)) static struct mg_http_proto_data *mg_http_get_proto_data(
    struct mg_connection *c) {
  return (struct mg_http_proto_data *) c->proto_data;
}
