
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int default_layer_state ;
 int default_layer_state_set (int) ;

void default_layer_xor(layer_state_t state) { default_layer_state_set(default_layer_state ^ state); }
