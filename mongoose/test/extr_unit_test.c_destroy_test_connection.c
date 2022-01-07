
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int dummy; } ;


 int mg_destroy_conn (struct mg_connection*,int ) ;

__attribute__((used)) static void destroy_test_connection(struct mg_connection *nc) {
  mg_destroy_conn(nc, 0 );
}
