
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ pressed; } ;
struct TYPE_4__ {TYPE_3__ event; } ;
typedef TYPE_1__ keyrecord_t ;


 int RaisePressed (TYPE_3__*,int) ;
 int RaiseReleased (int) ;

bool RaiseSwitch ( keyrecord_t *record, bool *key_state, bool brother ){

  if( record -> event.pressed ) {
    *key_state = 1;
    RaisePressed( &(record -> event), brother );
  } else {
    *key_state = 0;
    RaiseReleased( brother );
  }
  return 0;

}
