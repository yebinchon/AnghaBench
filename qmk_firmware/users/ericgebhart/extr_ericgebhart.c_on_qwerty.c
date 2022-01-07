
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ DVORAK_ON_BEPO ;
 scalar_t__ biton32 (int ) ;
 int default_layer_state ;

int on_qwerty(){
  uint8_t deflayer = (biton32(default_layer_state));
  return (deflayer < DVORAK_ON_BEPO);
}
