
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t MG_MAIN_IFACE ;
 int mg_if_create_iface (int ,int *) ;
 int * mg_ifaces ;
 int test_iface ;

void tests_setup(void) {
  test_iface = mg_if_create_iface(mg_ifaces[MG_MAIN_IFACE], ((void*)0));
}
