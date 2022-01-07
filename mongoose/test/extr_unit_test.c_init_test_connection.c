
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mg_connection {int iface; } ;


 int memset (struct mg_connection*,int ,int) ;
 int test_iface ;

__attribute__((used)) static void init_test_connection(struct mg_connection *nc) {
  memset(nc, 0, sizeof(*nc));
  nc->iface = test_iface;
}
