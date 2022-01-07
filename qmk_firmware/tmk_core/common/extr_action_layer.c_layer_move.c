
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint8_t ;


 int layer_state_set (unsigned long) ;

void layer_move(uint8_t layer) { layer_state_set(1UL << layer); }
