
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _LOWER ;
 int _NEUTRAL ;
 int _RAISE ;
 int layer_on (int ) ;
 int update_tri_layer (int ,int ,int ) ;

void LowerPressed ( bool brother_state ){

  if( brother_state ) { return; }

  layer_on( _LOWER );
  update_tri_layer(_LOWER, _RAISE, _NEUTRAL );
  return;
}
