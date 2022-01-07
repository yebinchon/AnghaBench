
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;



__attribute__((used)) static int mg_null_if_create_conn(struct mg_connection *c) {
  (void) c;
  return 1;
}
