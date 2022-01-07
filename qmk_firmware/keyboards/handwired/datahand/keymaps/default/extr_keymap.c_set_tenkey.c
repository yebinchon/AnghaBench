
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int set_nas (int) ;
 int tenkey_enabled ;

__attribute__((used)) static void set_tenkey(bool on) {
  tenkey_enabled = on;




  set_nas(1);
}
