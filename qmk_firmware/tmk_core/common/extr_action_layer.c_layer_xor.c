
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int layer_state_t ;


 int layer_state ;
 int layer_state_set (int) ;

void layer_xor(layer_state_t state) { layer_state_set(layer_state ^ state); }
