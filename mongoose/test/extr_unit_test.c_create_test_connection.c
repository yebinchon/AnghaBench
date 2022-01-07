
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 scalar_t__ calloc (int,int) ;
 int init_test_connection (struct mg_connection*) ;

__attribute__((used)) static struct mg_connection *create_test_connection() {
  struct mg_connection *nc = (struct mg_connection *) calloc(1, sizeof(*nc));
  init_test_connection(nc);
  return nc;
}
