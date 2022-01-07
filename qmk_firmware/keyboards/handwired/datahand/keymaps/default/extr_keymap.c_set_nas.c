
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NAS ;
 int NAS_NUMLOCK ;
 int NAS_TENKEY ;
 int NAS_TENKEY_NUMLOCK ;
 int layer_set (int,int ) ;
 scalar_t__ numlock_enabled ;
 scalar_t__ tenkey_enabled ;

__attribute__((used)) static void set_nas(bool on) {

  layer_set(on, NAS);

  layer_set(on && numlock_enabled, NAS_NUMLOCK);
  layer_set(on && tenkey_enabled, NAS_TENKEY);
  layer_set(on && tenkey_enabled && numlock_enabled, NAS_TENKEY_NUMLOCK);
}
