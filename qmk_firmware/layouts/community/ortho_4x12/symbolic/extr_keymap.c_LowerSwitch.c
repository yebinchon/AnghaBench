
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int LowerPressed (int) ;
 int LowerReleased (int) ;

bool LowerSwitch ( keyrecord_t *record, bool *key_state, bool brother ){
  if ( record -> event.pressed ) {
    *key_state = 1;
    LowerPressed( brother );
  } else {
    *key_state = 0;
    LowerReleased( brother );
  }

  return 0;

}
