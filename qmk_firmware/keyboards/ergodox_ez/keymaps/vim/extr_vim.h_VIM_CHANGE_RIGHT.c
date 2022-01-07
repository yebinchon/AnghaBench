
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int INSERT_MODE ;
 int VIM_DELETE_RIGHT () ;
 int layer_on (int ) ;
 int print (char*) ;

void VIM_CHANGE_RIGHT(void) {
  print("\e[31mcl\e[0m");
  VIM_DELETE_RIGHT();
  layer_on(INSERT_MODE);
}
