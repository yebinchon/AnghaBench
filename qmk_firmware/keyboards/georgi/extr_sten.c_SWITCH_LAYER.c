
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int keymapsCount ;
 int layer_on (int) ;

void SWITCH_LAYER(int layer) {
 if (keymapsCount >= layer)
  layer_on(layer);
}
