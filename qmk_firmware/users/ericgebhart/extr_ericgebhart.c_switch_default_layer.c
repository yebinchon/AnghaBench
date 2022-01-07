
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;


 int clear_keyboard () ;
 int default_layer_set (unsigned long) ;

__attribute__((used)) static void switch_default_layer(uint8_t layer) {
  default_layer_set(1UL<<layer);
  clear_keyboard();
}
