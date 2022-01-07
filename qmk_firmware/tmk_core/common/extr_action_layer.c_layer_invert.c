
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;


 unsigned long layer_state ;
 int layer_state_set (unsigned long) ;

void layer_invert(uint8_t layer) { layer_state_set(layer_state ^ (1UL << layer)); }
